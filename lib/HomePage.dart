// ignore_for_file: file_names, unused_import, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SQLite e Flutter'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              const Text('Clicca un tasto'),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/screenVisualizza');
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
