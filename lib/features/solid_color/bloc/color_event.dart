part of 'color_bloc.dart';

abstract class ColorEvents extends Equatable {
  const ColorEvents();

  @override
  List<Object> get props => [];
}

class MostUsedColorEvents extends ColorEvents {}

class NormalColorEvents extends ColorEvents {}

class PlainColorEvents extends ColorEvents {}

class SimpleColorEvents extends ColorEvents {}

class SolidColorEvents extends ColorEvents {}

class FancyColorsEvents extends ColorEvents {}

class GradientColorsEvents extends ColorEvents {}

class SimpleGradientEvents extends ColorEvents {}

class MostLovedColorsEvents extends ColorEvents {}

class CleanColorsEvents extends ColorEvents {}
