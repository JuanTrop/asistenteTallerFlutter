/*import 'package:asistentetaller/Model/DBO/autopartDBO.dart'; Posiblemente eliminar
import 'package:asistentetaller/Model/autopart.dart';
import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';

class Pricing extends StatefulWidget {
  State<Pricing> createState() => _Pricing();
}

class _Pricing extends State<Pricing> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyPricing(),
    );
  }
}

class BodyPricing extends StatefulWidget{
  State<BodyPricing> createState() => _BodyPricing();
}

class _BodyPricing extends State<BodyPricing> {
  SearchBarController<AutoPart> _searchBarController = SearchBarController();
  final AutoPartDBO autoParts = new AutoPartDBO();


  Future<List<AutoPart>> getAutoParts (String text) async {
      List<AutoPart> results = await autoParts.select();
      return results;
  }

  _onItemFound () {
    print("Hola");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: <Widget>[
        Positioned(
          child: Text(//TITULO
            "COTIZACION",
            style: TextStyle(fontSize: 20)
          ),),
          Positioned(
            child: SearchBar<AutoPart>(
              searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
              headerPadding: EdgeInsets.symmetric(horizontal: 10),
              listPadding: EdgeInsets.symmetric(horizontal: 10),
              onSearch: getAutoParts,
              searchBarController: _searchBarController,
              onItemFound: _onItemFound() ,
              placeHolder: Text("BUSCA TU ITEM"),
            )
          ),
      ],)
    );
  }
}*/
