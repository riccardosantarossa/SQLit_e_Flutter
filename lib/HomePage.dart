//SANTAROSSA RICCARDO 5BIA 01/01/2022

// ignore_for_file: file_names, unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'Swimmer.dart';
import 'package:sqflite/sqflite.dart';
import 'dbOperations.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Creo il DB all'avvio della homepage
    dbOperations.createDB();

    return Scaffold(
        appBar: AppBar(
          title: const Text('SQLite e Flutter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Clicca un tasto'),
              RaisedButton(
                //Tasto che porta alla schermata di visualizzazione
                onPressed: () {
                  Navigator.of(context).pushNamed('/screenVisualizza');
                },
                child: Text('Visualizza i dati'),
                color: Colors.amber,
              ),
              RaisedButton(
                //Tasto che porta alla schermata di inserimento
                onPressed: () {
                  Navigator.of(context).pushNamed('/screenInserisci');
                },
                child: Text('Inserisci dei dati'),
                color: Colors.amber,
              ),
              RaisedButton(
                //Tasto che porta alla schermata di cancellazione
                onPressed: () {
                  Navigator.of(context).pushNamed('/screenCancella');
                },
                child: Text('Cancella dei dati'),
                color: Colors.amber,
              ),
            ],
          ),
        ));
  }
}
