import 'package:ui_color_picker/features/solid_color/model/solid_color_model.dart';

abstract class ColorRepository {
  Future<List<ColorModel>> getMostUsedColor();
  Future<List<ColorModel>> getNormalColor();
  Future<List<ColorModel>> getPlainColor();
  Future<List<ColorModel>> getSimpleColor();
  Future<List<ColorModel>> getSolidColor();

  Future<List<ColorModel>> geFancyColor();
  Future<List<ColorModel>> getGradientColor();
  Future<List<ColorModel>> getSimpleGradientColor();
  Future<List<ColorModel>> getMostLovedColor();
  Future<List<ColorModel>> getClenColor();
}
