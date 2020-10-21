import 'package:flutter/material.dart';
import 'package:trash_to_cash/Screens/homeScreen.dart';
// import 'package:trash_to_cash/Screens/homeScreen.dart';
// import 'package:trash_to_cash/Screens/loginScreen.dart';
// import 'package:trash_to_cash/Screens/registrationScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trash to Cash',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}