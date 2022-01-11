//SANTAROSSA RICCARDO 5BIA 01/01/2022

// ignore_for_file: file_names, unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future OpenDB() async {
  WidgetsFlutterBinding.ensureInitialized();
  final database = openDatabase(join(await getDatabasesPath(), 'swimmersDB.db'),
      onCreate: (db, version) {
    return db.execute(
        'CREATE TABLE swimmers(id_swimmer INTEGER PRIMARY KEY, swimmer_name TEXT, age INTEGER, nation TEXT)');
  }, version: 1);
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                onPressed: () {
                  Navigator.of(context).pushNamed('/screenVisualizza',
                      arguments: {Future: OpenDB()});
                },
                child: Text('Visualizza i dati'),
                color: Colors.amber,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/screenInserisci');
                },
                child: Text('Inserisci dei dati'),
                color: Colors.amber,
              ),
              RaisedButton(
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
