import 'dart:math';
import 'package:flutter/material.dart';

class BackgroundColor extends ChangeNotifier {
  Color bgColor = Colors.black;
  List<int> rgbList = [];
  List<Color> history = [];

  BackgroundColor() {
    getNextColor();
  }

  Color get lastAddedColor => history.last;

  void getNextColor() {
    _updateHistory();
    rgbList = _generateRgbList();
    bgColor = Color.fromRGBO(rgbList[0], rgbList[1], rgbList[2], 1.0);

    notifyListeners();
  }

  void getPreviousColor() {
    var currentColor = lastAddedColor;
    _updateHistory();
    bgColor = currentColor;

    notifyListeners();
  }

  void _updateHistory() {
    if (history.length > 10) _resetHistory();
    history.add(bgColor);

    notifyListeners();
  }

  List<int> _generateRgbList() {
    final List<int> rgbList = [];
    for (var i = 0; i < 3; i++) {
      rgbList.add(Random().nextInt(255));
    }
    return rgbList;
  }

  void _resetHistory() => history = history.sublist(8, 9);
}
