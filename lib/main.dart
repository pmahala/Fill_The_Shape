import 'package:flutter/material.dart';
import 'GamePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GamePage(),
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.green,
        primaryColor: Colors.red,
      ),
    );
  }
}
