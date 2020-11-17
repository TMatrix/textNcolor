import 'package:flutter/material.dart';
import './widgets/backgroundContainer.dart';
import './widgets/returnBackButton.dart';

class ContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundContainer(),
          ReturnBackButton(),
        ],
      ),
    );
  }
}
