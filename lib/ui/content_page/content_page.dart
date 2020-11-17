import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/backgroundColor.dart';

class ContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
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
          ),
          Positioned(
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
          ),
        ],
      ),
    );
  }
}
