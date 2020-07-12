import 'package:flutter/material.dart';
import './textfieldcontainer.dart';

class RoundedPassword extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPassword({
    Key key,
    this.onChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFieldContainer(
          //Campo contraseña
          child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Ingrese su contraseña",
          icon: Icon(
            Icons.lock,
            color: Colors.white,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.white,
          ),
          border: InputBorder.none,
        ),
      )),
    );
  }
}
