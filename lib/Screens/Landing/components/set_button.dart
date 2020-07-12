import 'package:asistentetaller/Screens/Login/login.dart';
import 'package:asistentetaller/Screens/Register/register.dart';
import 'package:flutter/material.dart';
import './rounded_button.dart';

class SetButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RoundedButton(
                text: "LOGIN",
                color: Colors.yellow,
                textColor: Colors.black,
                press: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) {
                        return Login();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            RoundedButton(
              text: "REGISTRO",
              color: Colors.grey,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) {
                      return Register();
                    },
                  ),
                );
              },
            ),
          ])
        ],
      ),
    );
  }
}
