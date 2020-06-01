import 'package:flutter/material.dart';
import 'package:pokeguidedeli/deli.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Deli()
    );
  }
}
