import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.blue,
      textTheme: const TextTheme(
        headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold), // Substitui headline1
        bodyLarge: TextStyle(fontSize: 16.0), // Substitui bodyText1
      ),
      fontFamily: 'Poppins',
    );
  }
}
