import 'package:flutter/material.dart';

class ClickToCopyHelperBuilder extends StatelessWidget {
  const ClickToCopyHelperBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    final _size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Click to Copy",
            style: _textTheme.headline2!.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: _size.height * 0.02),
          Text(
            "Always perfect color",
            style: _textTheme.headline6!.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
