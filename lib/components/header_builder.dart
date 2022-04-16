import 'package:flutter/material.dart';

class HeaderBuilder extends StatelessWidget {
  const HeaderBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Text(
          "UI Color Picker",
          style: _textTheme.headline4!.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        Text(
          "About",
          style: _textTheme.headline4!.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
