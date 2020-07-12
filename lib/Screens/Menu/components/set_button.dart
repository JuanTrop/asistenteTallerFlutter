
//import 'package:asistentetaller/Screens/Pricing/pricing.dart'; Reemplazar o quitar
import 'package:flutter/material.dart';
import 'package:asistentetaller/Screens/Menu/components/rounded_button.dart';

class SetButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RoundedButton(
                text: "COTIZACION",
                color: Colors.black,
                textColor: Colors.white,
                press: () {
                   /*Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) {
                       // return Pricing(); //Reemplazar
                      },
                    ),
                  );*/
                },
              ),
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            RoundedButton(
              text: "INGRESO AUTOMOVIL",
              color: Colors.orange,
              textColor: Colors.black,
              press: () {
              },
            ),
          ])
        ],
      ),
    );
  }
}
