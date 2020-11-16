import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:text_n_color/services/color.service.dart';

class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  ColorService _colorService = ColorService();
  Color _currentColor;

  @override
  void initState() {
    super.initState();
    _currentColor = _colorService.getNextColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          print('Color $_currentColor');
          setState(() {
            _currentColor = _colorService.getNextColor();
          });
        },
        child: Container(
          color: _currentColor,
          constraints: BoxConstraints.expand(),
          child: Center(
            child: Text(
              'Hey There',
            ),
          ),
        ),
      ),
    );
  }
}
