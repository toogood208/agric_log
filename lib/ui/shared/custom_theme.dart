import 'package:flutter/material.dart';

class CustomTheme {
  CustomTheme._();
  
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    cardTheme: const CardTheme(
      margin: EdgeInsets.all(8),
      shadowColor: Colors.green,
      color: Colors.green,
    ),
    textTheme: const TextTheme(titleLarge: TextStyle(color: Colors.white)),
    appBarTheme: const AppBarTheme(
        color: Colors.white, iconTheme: IconThemeData(color: Colors.black)),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.green,
      background: Colors.white,
    ),
  );
}
