import 'package:flutter/cupertino.dart';
import 'dart:math';

class ColorService {
  Color getNextColor() {
    final rgbList = _getRgbList();
    Color nextColor = Color.fromRGBO(rgbList[0], rgbList[1], rgbList[2], 1.0);
    return nextColor;
  }

  List<int> _getRgbList() {
    List<int> rgbList = [];
    for (var i = 0; i < 3; i++) {
      rgbList.add(Random().nextInt(255));
    }

    return rgbList;
  }
}
