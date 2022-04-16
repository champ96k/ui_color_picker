import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:ui_color_picker/features/solid_color/model/solid_color_model.dart';

class ColorBuilder extends StatefulWidget {
  final List<ColorModel> models;
  final String title;

  const ColorBuilder({
    Key? key,
    required this.models,
    required this.title,
  }) : super(key: key);

  @override
  State<ColorBuilder> createState() => _ColorBuilderState();
}

class _ColorBuilderState extends State<ColorBuilder> {
  int _currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    final _size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: _size.height * 0.06),
        Text(
          widget.title,
          style: _textTheme.headline6!,
        ),
        SizedBox(height: _size.height * 0.02),
        LayoutBuilder(
          builder: (_, constrains) {
            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: (constrains.maxWidth > 1000)
                    ? 6
                    : (constrains.maxWidth < 1000 && constrains.maxWidth > 750)
                        ? 4
                        : (constrains.maxWidth > 100 &&
                                constrains.maxWidth < 500)
                            ? 2
                            : 2,
                crossAxisSpacing: _size.width * 0.01,
                mainAxisSpacing: 0.0,
                childAspectRatio: 9 / 19,
              ),
              itemCount: widget.models.length,
              itemBuilder: (BuildContext context, int index) {
                final _model = widget.models[index];
                return MouseRegion(
                  onHover: (event) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  opaque: true,
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      String snackBarText = '';

                      if (widget.models[index].hex != null) {
                        snackBarText = widget.models[index].hex!;
                      } else if (widget.models[index].gradient != null) {
                        for (int i = 0;
                            i < widget.models[index].gradient!.length;
                            i++) {
                          if (widget.models[index].gradient?[i] != null) {
                            snackBarText = snackBarText +
                                widget.models[index].gradient?[i] +
                                ' ';
                          }
                        }
                      }

                      const snackBar = SnackBar(
                        content: Text(
                          " copy ✅",
                          textAlign: TextAlign.center,
                        ),
                      );

                      FlutterClipboard.copy(snackBarText).then((value) {
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 100),
                      padding: EdgeInsets.symmetric(
                        vertical: _currentIndex == index ? 0.0 : 20.0,
                        horizontal: _currentIndex == index ? 0.0 : 6.0,
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 9,
                            child: _model.gradient != null
                                ? Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: List.generate(
                                          _model.gradient!.length,
                                          (position) => Color(
                                            int.parse(
                                                "${_model.gradient?[position]}"),
                                          ),
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  )
                                : _model.hex != null
                                    ? Container(
                                        decoration: BoxDecoration(
                                          color: Color(int.parse(_model.hex!)),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      )
                                    : Container(),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.center,
                              child: _model.hex != null
                                  ? Text(
                                      _model.hex ?? '',
                                      style: _textTheme.bodyText2!.copyWith(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17.0,
                                        letterSpacing: 1.75,
                                      ),
                                    )
                                  : _model.gradient != null
                                      ? Wrap(
                                          children: List.generate(
                                            _model.gradient!.length,
                                            (index) => Text(
                                              _model.gradient?[index] ?? '',
                                              style: _textTheme.bodyText2!
                                                  .copyWith(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 17.0,
                                                letterSpacing: 1.75,
                                              ),
                                            ),
                                          ),
                                        )
                                      : const Text(""),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        )
      ],
    );
  }
}
