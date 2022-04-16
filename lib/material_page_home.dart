import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_color_picker/components/click_to_copy_helper.dart';
import 'package:ui_color_picker/components/header_builder.dart';
import 'package:ui_color_picker/core/constant/constants.dart';
import 'package:ui_color_picker/features/solid_color/bloc/color_bloc.dart';
import 'package:ui_color_picker/widget/color_builder.dart';

class MaterialPageHome extends StatefulWidget {
  const MaterialPageHome({Key? key}) : super(key: key);

  @override
  _MaterialPageHomeState createState() => _MaterialPageHomeState();
}

class _MaterialPageHomeState extends State<MaterialPageHome> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff1C1C1C),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        primary: true,
        padding: EdgeInsets.all(_size.width * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderBuilder(),
            SizedBox(height: _size.height * 0.06),
            const ClickToCopyHelperBuilder(),
            SizedBox(height: _size.height * 0.06),
            SizedBox(
              height: _size.height * 0.08,
              width: _size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  Constants.headlineText.length,
                  (index) => Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: GestureDetector(
                        onTap: () => _triggerEvents(index),
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(
                              255,
                              254,
                              index * 20,
                              index * 40,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(Constants.headlineText[index]),
                          width: _size.width * 0.1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            BlocBuilder<ColorBloc, ColorState>(
              builder: (context, state) {
                if (state is SolidColorState) {
                  return ColorBuilder(
                    models: state.models,
                    title: state.title,
                  );
                }
                if (state is NormalColorState) {
                  return ColorBuilder(
                    models: state.models,
                    title: state.title,
                  );
                }
                if (state is MostUsedColorState) {
                  return ColorBuilder(
                    models: state.models,
                    title: state.title,
                  );
                }
                if (state is PlainColorState) {
                  return ColorBuilder(
                    models: state.models,
                    title: state.title,
                  );
                }
                if (state is SimpleColorState) {
                  return ColorBuilder(
                    models: state.models,
                    title: state.title,
                  );
                } else {
                  return SizedBox(
                    height: _size.height * 0.6,
                    width: _size.width,
                    child: const Center(
                      child: Center(
                        child: CircularProgressIndicator(color: Colors.red),
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * 0.04,
        child: const Center(
          child: Text("With great color, comes great design."),
        ),
      ),
    );
  }

  _triggerEvents(int index) {
    switch (index) {
      case 0:
        context.read<ColorBloc>().add(NormalColorEvents());
        break;
      case 1:
        context.read<ColorBloc>().add(MostUsedColorEvents());
        break;

      case 2:
        context.read<ColorBloc>().add(NormalColorEvents());
        break;

      case 3:
        context.read<ColorBloc>().add(PlainColorEvents());
        break;

      case 4:
        context.read<ColorBloc>().add(SimpleColorEvents());
        break;

      case 5:
        context.read<ColorBloc>().add(SolidColorEvents());
        break;

      case 6:
        context.read<ColorBloc>().add(MostUsedColorEvents());
        break;

      case 7:
        context.read<ColorBloc>().add(NormalColorEvents());
        break;

      case 8:
        context.read<ColorBloc>().add(SolidColorEvents());
        break;

      case 9:
        context.read<ColorBloc>().add(MostUsedColorEvents());
        break;

      default:
    }
  }
}
