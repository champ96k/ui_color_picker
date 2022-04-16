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
          title: "Most Loved Color",
          dateTime: DateTime.now(),
        ));
      }

      if (event is NormalColorEvents) {
        final _model = await repository.getNormalColor();
        emit(NormalColorState(
          models: _model,
          title: "Normal Color",
          dateTime: DateTime.now(),
        ));
      }
      if (event is PlainColorEvents) {
        final _model = await repository.getPlainColor();
        emit(PlainColorState(
          models: _model,
          title: "Plain Color",
          dateTime: DateTime.now(),
        ));
      }
      if (event is SimpleColorEvents) {
        final _model = await repository.getSimpleColor();
        emit(SimpleColorState(
          models: _model,
          title: "Simple Color",
          dateTime: DateTime.now(),
        ));
      }

      if (event is SolidColorEvents) {
        final _model = await repository.getSolidColor();
        emit(SolidColorState(
          models: _model,
          title: "Solid Color",
          dateTime: DateTime.now(),
        ));
      }
    });
  }
}
