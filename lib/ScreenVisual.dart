//SANTAROSSA RICCARDO 5BIA 01/01/2022

// ignore_for_file: file_names, unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors, curly_braces_in_flow_control_structures, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'Swimmer.dart';
import 'dbOperations.dart';

class ScreenVisual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina di visualizzazione'),
      ),
      //Builder della visualizzazione (dati di tipo Future)
      body: FutureBuilder<List<Swimmer>>(
          //Acquisisco l'output della funzione che genera i record
          future: dbOperations.generateRecords(),
          builder: (context, future) {
            //Se la lista è vuota non stampo nulla, ma faccio solo il container vuoto
            if (!future.hasData)
              return Container();
            else {
              //Acquisisco i dati della lista (che sono di tipo Future)
              List<Swimmer>? displayList = future.data;
              //Costruisco la ListView
              return ListView.builder(
                itemCount: displayList!.length,
                itemBuilder: (context, index) {
                  return Container(child: Text(displayList[index].toString()));
                },
              );
            }
          }),
    );
  }
}
