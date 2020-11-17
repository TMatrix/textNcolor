import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_n_color/models/backgroundColor.dart';
import 'package:text_n_color/ui/content_page/content_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BackgroundColor>(
      create: (_) => BackgroundColor(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Text'N'Color",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ContentPage(),
      ),
    );
  }
}
