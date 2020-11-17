import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../models/backgroundColor.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<BackgroundColor>().getNextColor();
      },
      child: Container(
        color: context.watch<BackgroundColor>().bgColor,
        constraints: BoxConstraints.expand(),
        child: Center(
          child: Text(
            'Hey There',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
