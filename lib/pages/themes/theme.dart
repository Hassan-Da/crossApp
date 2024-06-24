import 'package:flutter/material.dart';

class MyTheme {
  static List<ThemeData> themes = [
    ThemeData(
        primarySwatch: Colors.red,
        textTheme: const TextTheme(
            bodyLarge: TextStyle(fontSize: 32, color: Colors.black),
            bodyMedium: TextStyle(fontSize: 20, color: Colors.black),
            bodySmall: TextStyle(fontSize: 16, color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black)
    ),
  ];
}
