//SANTAROSSA RICCARDO 5BIA 01/01/2022

// ignore_for_file: file_names, unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'Swimmer.dart';
import 'dbOperations.dart';

class ScreenInserisci extends StatelessWidget {
  final idController = TextEditingController();
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final nationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //Creo il record usando i dati raccolti dalle textfield
    Swimmer createRecord() {
      var sw1 = Swimmer(
          id_swimmer: idController.text.length > 0
              ? int.parse(idController.text)
              : null,
          swimmer_name: nameController.text,
          age: int.parse(ageController.text),
          nation: nationController.text);
      return sw1;
    }

    //Pulisce le caselle di testo
    void blanktext() {
      idController.text = "";
      nameController.text = "";
      ageController.text = "";
      nationController.text = "";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina di inserimento '),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          //Includo la textfield in un contenitore
          SizedBox(
            width: 300,
            child: TextField(
              //Associo il controller
              controller: idController,
              //Suggerisco all'utente cosa inserire
              decoration: InputDecoration(labelText: 'Inserire ID'),
            ),
          ),
          //Includo la textfield in un contenitore
          SizedBox(
            width: 300,
            child: TextField(
              //Associo il controller
              controller: nameController,
              decoration: InputDecoration(labelText: 'Inserire nome'),
            ),
          ),
          //Includo la textfield in un contenitore
          SizedBox(
            width: 300,
            child: TextField(
              //Associo il controller
              controller: ageController,
              //Suggerisco all'utente cosa inserire
              decoration: InputDecoration(labelText: 'Inserire età'),
            ),
          ),
          //Includo la textfield in un contenitore
          SizedBox(
            width: 300,
            child: TextField(
              //Associo il controller
              controller: nationController,
              //Suggerisco all'utente cosa inserire
              decoration: InputDecoration(labelText: 'Inserire nazionalità'),
            ),
          ),
          RaisedButton(
              child: Text('Inserisci il nuotatore'),
              //Alla pressione del bottone viene inserito nel database il record del nuotatore creato in precedenza
              onPressed: () {
                dbOperations.insertRecord(createRecord()).then((value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content:
                          Text("Inserito record con id: " + value.toString()),
                      duration: Duration(seconds: 1),
                    ),
                  );
                  //Pulisce le caselle di testo
                  blanktext();
                  //Dà un feedback all'utente che ha inserito il record
                });
              }),
        ],
      )),
    );
  }
}
