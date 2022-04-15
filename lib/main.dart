import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';
import 'package:ui_color_picker/firebase_options.dart';
import 'package:ui_color_picker/src/error_screen.dart';
import 'package:ui_color_picker/src/splash_screen.dart';

import 'material_page_home.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance);

  // Set default `_initialized` and `_error` state to false
  bool _initialized = false;
  bool _error = false;

  // Define an async function to initialize FlutterFire
  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      setState(() {
        _initialized = true;
      });
    } on Exception catch (_) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    initializeFlutterFire();
  }

  @override
  Widget build(BuildContext context) {
    // Show error message if initialization failed
    if (_error) {
      return const ErrorScreen();
    }

    // Show a loader until FlutterFire is initialized
    if (!_initialized) {
      return const SplashScreen();
    } else {
      return MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        navigatorObservers: <NavigatorObserver>[
          observer,
          NavigationHistoryObserver()
        ],
        home: const MaterialPageHome(),
      );
    }
  }
}
