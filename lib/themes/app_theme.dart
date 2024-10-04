import 'package:flutter/material.dart';

class MyAppTheme {
  MyAppTheme(
      {required this.color}); // Основний колір за замовчуванням - зелений

  final MaterialColor color;

  // Метод для створення світлої теми
  ThemeData get lightTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: color.shade300,
          brightness: Brightness.light,
          primary: color),
      useMaterial3: true,
    );
  }

  // Метод для створення темної теми
  ThemeData get darkTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: color.shade300,
          brightness: Brightness.dark,
          primary: color),
      useMaterial3: true,
    );
  }
}
