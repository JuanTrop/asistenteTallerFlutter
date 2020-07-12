import 'package:flutter/material.dart';
import './set_button.dart';

class BodyRegister extends StatelessWidget {
  const BodyRegister({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: double.infinity,
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Positioned(
              top: 40,
              child: Text(
                'REGISTRO',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              )),
          Positioned(
            top: 150,
            child: Image.asset(
              'assets/images/logo_register.png',
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            top: 350,
            child: SetButton(),
          ),
        ]));
  }
}
