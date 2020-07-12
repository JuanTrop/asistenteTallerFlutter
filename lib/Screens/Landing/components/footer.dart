import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: _urlGithub,
        child: Text(
          'CREADO POR: JuanTrop',
          style: TextStyle(decoration: TextDecoration.underline),
        ) ,
        )
    );
  }

  _urlGithub() async {
    const url = 'https://github.com/JuanTrop';
    if(await canLaunch(url)) {
      await launch(url);
    }else {
      throw 'No se pudo iniciar el link $url';
    }
  }
}