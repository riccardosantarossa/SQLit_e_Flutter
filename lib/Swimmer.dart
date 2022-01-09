//SANTAROSSA RICCARDO 5BIA 09/11/2022

// ignore_for_file: file_names, unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Swimmer {
  final int id_swimmer;
  final String swimmer_name;
  final int age;
  final String nation;

  Swimmer(
      {required this.id_swimmer,
      required this.swimmer_name,
      required this.age,
      required this.nation});

  Map<String, dynamic> toMap() {
    return {
      'id_swimmer': id_swimmer,
      'swimmer_name': swimmer_name,
      'age': age,
      'nation': nation,
    };
  }

  @override
  String toString() {
    return 'Swimmer{id_swimmer: $id_swimmer, swimmer_name: $swimmer_name, age: $age, nation: $nation}';
  }
}
