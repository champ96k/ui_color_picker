import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:ui_color_picker/core/constant/constants.dart';
import 'package:ui_color_picker/core/repository/color_repository.dart';
import 'package:ui_color_picker/features/solid_color/model/solid_color_model.dart';

class ColorRepositoryImp extends ColorRepository {
  @override
  Future<List<ColorModel>> getPlainColor() async {
    final response = await rootBundle.loadString(Constants.plainColorFilePath);
    final List<dynamic> _result = json.decode(response);

    final List<ColorModel> _models =
        _result.map((e) => ColorModel.fromJson(e)).toList();

    return _models;
  }

  @override
  Future<List<ColorModel>> getSolidColor() async {
    final response = await rootBundle.loadString(Constants.solidColorFilePath);
    final List<dynamic> _result = json.decode(response);

    final List<ColorModel> _models =
        _result.map((e) => ColorModel.fromJson(e)).toList();

    return _models;
  }

  @override
  Future<List<ColorModel>> getMostUsedColor() async {
    final response =
        await rootBundle.loadString(Constants.mostUsedColorColorFilePath);
    final List<dynamic> _result = json.decode(response);

    final List<ColorModel> _models =
        _result.map((e) => ColorModel.fromJson(e)).toList();

    return _models;
  }

  @override
  Future<List<ColorModel>> getNormalColor() async {
    final response = await rootBundle.loadString(Constants.normalColorFilePath);
    final List<dynamic> _result = json.decode(response);

    final List<ColorModel> _models =
        _result.map((e) => ColorModel.fromJson(e)).toList();

    return _models;
  }

  @override
  Future<List<ColorModel>> getSimpleColor() async {
    final response = await rootBundle.loadString(Constants.simpleColorFilePath);
    final List<dynamic> _result = json.decode(response);

    final List<ColorModel> _models =
        _result.map((e) => ColorModel.fromJson(e)).toList();

    return _models;
  }

  @override
  Future<List<ColorModel>> geFancyColor() async {
    final response = await rootBundle.loadString(Constants.fancyColorFilePath);
    final List<dynamic> _result = json.decode(response);

    final List<ColorModel> _models =
        _result.map((e) => ColorModel.fromJson(e)).toList();

    return _models;
  }

  @override
  Future<List<ColorModel>> getClenColor() async {
    final response = await rootBundle.loadString(Constants.cleanColorsFilePath);
    final List<dynamic> _result = json.decode(response);

    final List<ColorModel> _models =
        _result.map((e) => ColorModel.fromJson(e)).toList();

    return _models;
  }

  @override
  Future<List<ColorModel>> getGradientColor() async {
    final response = await rootBundle.loadString(Constants.gradientColorsPaht);
    final List<dynamic> _result = json.decode(response);

    final List<ColorModel> _models =
        _result.map((e) => ColorModel.fromJson(e)).toList();

    return _models;
  }

  @override
  Future<List<ColorModel>> getMostLovedColor() async {
    final response =
        await rootBundle.loadString(Constants.mostLovedColorsFilePath);
    final List<dynamic> _result = json.decode(response);

    final List<ColorModel> _models =
        _result.map((e) => ColorModel.fromJson(e)).toList();

    return _models;
  }

  @override
  Future<List<ColorModel>> getSimpleGradientColor() async {
    final response = await rootBundle.loadString(Constants.simpleGradientPath);
    final List<dynamic> _result = json.decode(response);

    final List<ColorModel> _models =
        _result.map((e) => ColorModel.fromJson(e)).toList();

    return _models;
  }
}
