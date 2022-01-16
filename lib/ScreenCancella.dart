//SANTAROSSA RICCARDO 5BIA 01/01/2022

// ignore_for_file: file_names, unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_sql/dbOperations.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ScreenCancella extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pagina di Cancellazione dei dati'),
        ),
        body: Center(
          child: RaisedButton(
              child: Text('Cancella il record'),
              //Alla pressione del pulsante viene eseguita la funzione che cancella il record con l'ID corrispondente
              onPressed: () {
                dbOperations.deleteRecord(1);
              }),
        ));
  }
}
