import 'package:flutter/material.dart';
import 'set_button.dart';
import 'footer.dart';

class BodyLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 40,
              child: Text(
                'ASISTENTE DE TALLER',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Positioned(
              top: 150,
              child: Image.asset(
                'assets/images/logo-renault.png',
                width: size.width * 0.4,
              ),
            ),
            Positioned(
              bottom: 180,
              child: SetButton(),
            ),
            Positioned(
              bottom: 40,
              child: Footer(),
            ),
          ],
        ));
  }
}
