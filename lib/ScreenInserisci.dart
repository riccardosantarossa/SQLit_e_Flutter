//SANTAROSSA RICCARDO 5BIA 09/11/2022

// ignore_for_file: file_names, unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'Swimmer.dart';
import 'main.dart';

class ScreenInserisci extends StatelessWidget {
  Future<void> insertSwimmer(Swimmer swimmer) async {
    //final db = await database;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina di inserimento dei dati'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Inserisci il nuotatore'), onPressed: () {}),
      ),
    );
  }
}
