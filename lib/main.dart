import 'package:flutter/material.dart';
import './Screens/Landing/landing.dart';
import 'package:flutter/services.dart';
void main() {
      WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_) {
      runApp(new MyApp());
    });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Asistente de taller ';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Landing()
    );
  }
}

