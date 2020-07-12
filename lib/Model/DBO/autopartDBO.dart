//import 'package:asistentetaller/Model/DAO/autopartDAO.dart';
import 'package:asistentetaller/Model/autopart.dart';
import 'package:sqflite/sqflite.dart';
import './DBHelper.dart';

class AutoPartDBO {
  final connection = new DBHelper();

// A continuación, define la función para insertar dogs en la base de datos

//Funcion insert de AutoPartDAO. La clase no la implementa por motivos de desarrollo. Esta funcion es asincrona
Future<void> insert(AutoPart autoPart) async {


  // Obtiene una referencia de la base de datos
  final Database db = await connection.database;

  await db.insert(
    'AutoParts',
    autoPart.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );

}
//Funcion Select de AutoPartDAO. La clase no la implementa por motivos de desarrollo. Esta funcion es asincrona
Future<List<AutoPart>> select() async {
  // Obtiene una referencia de la base de datos
  final Database db = await connection.database;

  // Consulta la tabla por todos los Dogs.
  final List<Map<String, dynamic>> maps = await db.query('AutoParts');

  // Convierte List<Map<String, dynamic> en List<Dog>.
  return List.generate(maps.length, (i) {
    return AutoPart(
      id: maps[i]['id'],
      name: maps[i]['name'],
      description: maps[i]['description'],
      price: maps[i]['price']
    );
  });
}
}
  
