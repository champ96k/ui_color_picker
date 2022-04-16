import 'package:get_it/get_it.dart';
import 'package:ui_color_picker/core/repository/color_repository_imp.dart';

final getIt = GetIt.instance;

void serviceLocator() {
  getIt.registerSingleton<ColorRepositoryImp>(ColorRepositoryImp());
}
