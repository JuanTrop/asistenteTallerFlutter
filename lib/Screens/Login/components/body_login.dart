import 'package:asistentetaller/Screens/Landing/components/rounded_button.dart';
import 'package:asistentetaller/Screens/Login/components/rounded_password.dart';
import 'package:asistentetaller/Screens/Login/components/textfieldcontainer.dart';
import 'package:asistentetaller/Screens/Menu/menu.dart';
import './textfieldcontainer.dart';
import 'package:flutter/material.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Image.asset(
            "assets/images/logo_login.png",
            height: size.height * 0.1,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            TextFieldContainer(
                //Campo usuario
                child: TextField(
                    decoration: InputDecoration(
              hintText: "Ingrese su usuario",
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              border: InputBorder.none,
            ))),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            RoundedPassword(onChanged: (value) {}),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RoundedButton(
                text: "LOGIN",
                press: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) {
                        return Menu();
                      },
                    ),
                  );
                },
              )
            ],
          ),
        ]));
  }
}
