import 'package:flutter/material.dart';
import 'package:asistentetaller/Screens/Menu/components/set_button.dart';
class BodyMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Stack(children: <Widget>[
        Positioned(
         top: 50,
         left: 8,
         child: Text(
            "MENU DE OPERACIONES",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        Positioned(
          child:SetButton(),
        ),
      ]),
    );
  }
}