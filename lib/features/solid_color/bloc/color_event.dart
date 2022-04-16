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
