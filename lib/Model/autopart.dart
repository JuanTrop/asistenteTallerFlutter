

import 'package:asistentetaller/Model/DAO/autopartDAO.dart';
import 'package:asistentetaller/Model/DBO/autopartDBO.dart';

class AutoPart implements AutoPartDAO{
  int id;
  String description;
  double price;
  String name;

    AutoPart({this.id, this.description, this.price, this.name});

    //Comportamiento añadido para poder implementar persistencia con SQLite
    Map <String, dynamic> toMap(){
      return {
        'id':id,
        'description':description,
        'price': price,
        'name': name
      };
    }

    //AutoPartDAO.insert()
    void insert(AutoPartDBO db){
      db.insert(this);
    }

    void select(AutoPartDBO db){
      db.select();
    }
}