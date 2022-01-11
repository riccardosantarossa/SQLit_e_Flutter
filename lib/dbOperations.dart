//SANTAROSSA RICCARDO 5BIA 01/01/2022

// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'Swimmer.dart';

class dbOperations {
  static void createDB() async {
    final database = openDatabase(
      join(await getDatabasesPath(), 'swimmersDB.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE swimmers(id_swimmer INTEGER PRYMARY KEY AUTO_INCREMENT, swimmer_name TEXT, age INTEGER, nation TEXT)',
        );
      },
      version: 1,
    );
  }

  static Future<void> insertRecord(Swimmer swimmer) async {
    final database = openDatabase('swimmersDB.db');

    final data = await database;

    /*await data.insert(swimmers, swimmer.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);*/
  }
}
