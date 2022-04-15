import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';
import 'package:ui_color_picker/src/error_screen.dart';
import 'package:ui_color_picker/src/splash_screen.dart';

import 'material_page_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runZonedGuarded(
      () =>
          SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
              .then((value) => runApp(const MyApp())), (error, stackTrace) {
    FirebaseCrashlytics.instance.recordError(error, stackTrace);
  });
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static FirebaseAnalytics analytics = FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  // Set default `_initialized` and `_error` state to false
  bool _initialized = false;
  bool _error = false;

  // Define an async function to initialize FlutterFire
  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();

      setState(() {
        _initialized = true;
      });
      await _initCrashlytics();
    } on Exception catch (_) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _error = true;
      });
    }
  }

  Future _initCrashlytics() async {
    if (kDebugMode) {
      // Force enable crashlytics collection enabled if we’re testing it.
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
    }
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
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
