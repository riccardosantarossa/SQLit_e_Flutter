import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'ScreenVisual.dart';
import 'ScreenInserisci.dart';
import 'ScreenCancella.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: HomePage(),
      routes: {
        '/screenVisualizza': (_) => ScreenVisual(),
        '/screenInserisci': (_) => ScreenInserisci(),
        '/screenCancella': (_) => ScreenCancella(),
      },
    );
  }
}
