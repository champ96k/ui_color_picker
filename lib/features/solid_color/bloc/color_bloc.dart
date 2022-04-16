import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ui_color_picker/core/repository/color_repository.dart';
import 'package:ui_color_picker/features/solid_color/model/solid_color_model.dart';

part 'color_event.dart';
part 'color_state.dart';

class ColorBloc extends Bloc<ColorEvents, ColorState> {
  final ColorRepository repository;
  ColorBloc({required this.repository}) : super(SolidcolorInitial()) {
    on<ColorEvents>((event, emit) async {
      if (event is MostUsedColorEvents) {
        final _model = await repository.getMostUsedColor();
        emit(MostUsedColorState(
          models: _model,
          title: "Most Loved Colors",
          dateTime: DateTime.now(),
        ));
      }

      if (event is NormalColorEvents) {
        final _model = await repository.getNormalColor();
        emit(NormalColorState(
          models: _model,
          title: "Normal Colors",
          dateTime: DateTime.now(),
        ));
      }
      if (event is PlainColorEvents) {
        final _model = await repository.getPlainColor();
        emit(PlainColorState(
          models: _model,
          title: "Plain Colors",
          dateTime: DateTime.now(),
        ));
      }
      if (event is SimpleColorEvents) {
        final _model = await repository.getSimpleColor();
        emit(SimpleColorState(
          models: _model,
          title: "Simple Colors",
          dateTime: DateTime.now(),
        ));
      }

      if (event is SolidColorEvents) {
        final _model = await repository.getSolidColor();
        emit(SolidColorState(
          models: _model,
          title: "Solid Colors",
          dateTime: DateTime.now(),
        ));
      }

      if (event is FancyColorsEvents) {
        final _model = await repository.geFancyColor();
        emit(FancyColorsState(
          models: _model,
          title: "Fancy Colors",
          dateTime: DateTime.now(),
        ));
      }

      if (event is GradientColorsEvents) {
        final _model = await repository.getGradientColor();
        emit(GradientColorsState(
          models: _model,
          title: "Gradient Colors",
          dateTime: DateTime.now(),
        ));
      }
      if (event is SimpleGradientEvents) {
        final _model = await repository.getSimpleGradientColor();
        emit(SimpleGradientState(
          models: _model,
          title: "Simple Colors",
          dateTime: DateTime.now(),
        ));
      }

      if (event is MostLovedColorsEvents) {
        final _model = await repository.getMostLovedColor();
        emit(MostLovedColorsState(
          models: _model,
          title: "Most Loved Colors",
          dateTime: DateTime.now(),
        ));
      }

      if (event is CleanColorsEvents) {
        final _model = await repository.getClenColor();
        emit(CleanColorsState(
          models: _model,
          title: "Clean Colors",
          dateTime: DateTime.now(),
        ));
      }
    });
  }
}
