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
                },
              ),
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            RoundedButton(
              text: "VENTA REPUESTO",
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
