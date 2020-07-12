import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static final String _dbName = 'workshopassistant.db';
  static final String path  =  getDatabasesPath().toString();
  static final int _dbVersion = 1;

// DBHelper._privateConstructor();
//  static final DBHelper instance = DBHelper._privateConstructor();

// Abre la base de datos y guarda la referencia.
final Future<Database> database  = openDatabase(

  join(path, _dbName),
  onCreate: (db, dbVersion) {
    db.execute('''CREATE TABLE Users (
      id INTEGER PRIMARY KEY, 
      idClient TEXT, 
      date TEXT),
      email TEXT,
      rol INTEGER''',);
    db.execute('''CREATE TABLE Forms (
      id INTEGER PRIMARY KEY, 
      name TEXT, 
      date TEXT,
      reason TEXT,
      clientName TEXT),
      plaque TEXT''',);
    db.execute('''CREATE TABLE Pricings (
      id INTEGER PRIMARY KEY,
      date TEXT, 
      idClient INTEGER,
      idSeller INTEGER,
      clientName TEXT,
      sellerName TEXT
      )''',);
    db.execute('''CREATE TABLE AutoParts (
      id INTEGER PRIMARY KEY, 
      name TEXT, 
      description TEXT,
      price REAL,
      )''',);
  },
  version: _dbVersion,
);

}