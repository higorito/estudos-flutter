import 'dart:html';
import 'package:path/path.dart';
import 'package:flutter/painting.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io' as io;

class Ajudante{
  static Database _db;

  Future<Database> get db async{
    if (_db != null)return _db; 

    _db = await initDb();
    return _db;
      
  }

  initDb() async{
    io.Directory localizacaoDir = await getApplicationDocumentsDirectory();
    String caminho = join(localizacaoDir.path, "carros.db");

    var banco = await openDatabase(caminho, version: 1, onCreate: _criandoDb);

  }
  void _criandoDb(Database db, int version) async {
    // When creating the db, create the table
    await db.execute(
        "CREATE TABLE pessoas(id INTEGER PRIMARY KEY, nome TEXT, idade INTEGER, email TEXT)");
    print("Tabela Criada");
  }

}