//SANTAROSSA RICCARDO 5BIA 01/01/2022

// ignore_for_file: file_names, unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_sql/dbOperations.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ScreenCancella extends StatelessWidget {
  final txtController = TextEditingController();

  //Funzione che converte il testo in intero da passare alla funzione che cancella il record
  int getID() {
    final data = int.parse(txtController.text);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pagina di Cancellazione'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 300.0,
              child: TextField(
                //Associo il controller alla textfield per recuperare i dati inseriti
                controller: txtController,
                //Faccio capire all'utente cosa deve inserire
                decoration: InputDecoration(
                    labelText: 'Inserire ID del record da cancellare'),
              ),
            ),
            RaisedButton(
                color: Colors.amber,
                child: Text('Cancella il record'),
                //Alla pressione del pulsante viene eseguita la funzione che cancella il record con l'ID corrispondente
                onPressed: () {
                  //Cancella il record passato-
                  dbOperations.deleteRecord(getID());
                  txtController.text = "";
                  //Dà un feedback all'utente che ha cancellato il record
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Record cancellato correttamente'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                }),
          ],
        )));
  }
}
