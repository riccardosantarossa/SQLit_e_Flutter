//SANTAROSSA RICCARDO 5BIA 01/01/2022

// ignore_for_file: file_names, unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'Swimmer.dart';
import 'dbOperations.dart';

class ScreenInserisci extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Creato il record da inserire nella tabella
    var sw1 = Swimmer(
        id_swimmer: 1, swimmer_name: 'Michael Phelps', age: 36, nation: 'USA');

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina di inserimento dei dati'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Inserisci il nuotatore'),
            //Alla pressione del bottone viene inserito nel database il record del nuotatore creato in precedenza
            onPressed: () {
              dbOperations.insertRecord(sw1);
            }),
      ),
    );
  }
}
