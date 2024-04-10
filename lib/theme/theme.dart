import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(255, 85, 85, 85),
  primarySwatch: Colors.yellow,
  // primaryColor: Colors.yellow,
  dividerColor: Colors.white24,
  appBarTheme: const AppBarTheme(
    elevation: 3,
    shadowColor: Colors.black,
    backgroundColor: Color.fromARGB(255, 85, 85, 85),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
  ),
  listTileTheme:
      const ListTileThemeData(iconColor: Colors.white), // цвета иконок

  textTheme: TextTheme(
    titleMedium: const TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      fontWeight: FontWeight.w900,
      fontSize: 22,
    ),
    bodyMedium: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 20,
    ),
    labelSmall: TextStyle(
      color: Colors.white.withOpacity(0.6),
      fontWeight: FontWeight.w700,
      fontSize: 14,
    ),
  ),
  useMaterial3: true,
);
