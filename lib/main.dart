//SANTAROSSA RICCARDO 5BIA 09/11/2022

// ignore_for_file: file_names, unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
