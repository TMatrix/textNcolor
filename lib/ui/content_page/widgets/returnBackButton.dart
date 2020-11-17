import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_n_color/models/backgroundColor.dart';

class ReturnBackButton extends StatelessWidget {
  const ReturnBackButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15,
      right: 15,
      child: FloatingActionButton(
        child: Icon(
          Icons.keyboard_backspace_rounded,
          size: 20,
        ),
        backgroundColor: context.watch<BackgroundColor>().lastAddedColor,
        onPressed: () {
          context.read<BackgroundColor>().getPreviousColor();
        },
        tooltip: 'RGB ${context.watch<BackgroundColor>().rgbList}',
      ),
    );
  }
}
