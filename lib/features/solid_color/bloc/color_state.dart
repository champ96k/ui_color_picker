part of 'color_bloc.dart';

abstract class ColorState extends Equatable {}

class SolidcolorInitial extends ColorState {
  @override
  List<Object?> get props => ['SolidcolorInitial'];
}

class MostUsedColorState extends ColorState {
  final List<ColorModel> models;
  final String title;
  final DateTime dateTime;
  MostUsedColorState({
    required this.models,
    required this.title,
    required this.dateTime,
  });

  @override
  List<Object?> get props => [models, title, dateTime];
}

class NormalColorState extends ColorState {
  final List<ColorModel> models;
  final String title;
  final DateTime dateTime;
  NormalColorState({
    required this.models,
    required this.title,
    required this.dateTime,
  });

  @override
  List<Object?> get props => [models, title, dateTime];
}

class PlainColorState extends ColorState {
  final List<ColorModel> models;
  final String title;
  final DateTime dateTime;
  PlainColorState({
    required this.models,
    required this.title,
    required this.dateTime,
  });

  @override
  List<Object?> get props => [models, title, dateTime];
}

class SimpleColorState extends ColorState {
  final List<ColorModel> models;
  final String title;
  final DateTime dateTime;
  SimpleColorState({
    required this.models,
    required this.title,
    required this.dateTime,
  });

  @override
  List<Object?> get props => [models, title, dateTime];
}

class SolidColorState extends ColorState {
  final List<ColorModel> models;
  final String title;
  final DateTime dateTime;
  SolidColorState({
    required this.models,
    required this.title,
    required this.dateTime,
  });

  @override
  List<Object?> get props => [models, title, dateTime];
}
