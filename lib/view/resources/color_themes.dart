import 'package:flutter/material.dart';

class AfterwardsColorTheme {
  final ThemeData _light;
  ThemeData get light => _light;
  final ThemeData _dark;
  ThemeData get dark => _dark;

  AfterwardsColorTheme(this._light, this._dark);
}

class ColorThemes {
  static AfterwardsColorTheme get main => AfterwardsColorTheme(_light, _dark);
}

final _light = ThemeData(
  fontFamily: 'OpenSans',
  textTheme: const TextTheme(
    titleSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: Color.fromRGBO(0, 0, 0, 0.85),
    ),
    titleMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Color.fromRGBO(0, 0, 0, 0.85),
    ),
    titleLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Color.fromRGBO(0, 0, 0, 0.85),
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(0, 0, 0, 0.85),
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(0, 0, 0, 0.85),
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(0, 0, 0, 0.85),
    ),
    headlineSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: Color.fromRGBO(119, 185, 248, 1.0),
    ),
    headlineMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Color.fromRGBO(119, 185, 248, 1.0),
    ),
    headlineLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Color.fromRGBO(119, 185, 248, 1.0),
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w200,
      color: Color.fromRGBO(168, 168, 168, 1),
    ),
    labelMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(168, 168, 168, 1),
    ),
    labelLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Color.fromRGBO(167, 209, 249, 1),
    ),
  ),
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: Color.fromRGBO(167, 209, 249, 1),
    onPrimary: Color.fromRGBO(249, 249, 249, 1),
    secondary: Color.fromRGBO(119, 185, 248, 1),
    onSecondary: Color.fromRGBO(168, 168, 168, 1),
    tertiary: Color.fromRGBO(190, 224, 255, 1),
    error: Color.fromRGBO(255, 103, 103, 1),
    onError: Color.fromRGBO(255, 103, 103, 1),
    inverseSurface: Color.fromRGBO(111, 211, 126, 1),
    onInverseSurface: Color.fromRGBO(111, 211, 126, 1),
    surfaceTint: Color.fromRGBO(233, 191, 22, 1),
    surface: Colors.white,
    onSurface: Colors.white,
    surfaceContainer: Colors.black,
    surfaceDim: Color.fromRGBO(217, 217, 217, 0.3),
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Color.fromRGBO(255, 255, 255, 1),
  ),
  dividerTheme: const DividerThemeData(
    color: Color.fromRGBO(168, 168, 168, 1),
    thickness: 2,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0.85),
      foregroundColor: const Color.fromRGBO(190, 224, 255, 1),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ),
  ),
);

final _dark = ThemeData(
  fontFamily: 'OpenSans',
  textTheme: const TextTheme(
    titleSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: Color.fromRGBO(0, 0, 0, 0.85),
    ),
    titleMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Color.fromRGBO(0, 0, 0, 0.85),
    ),
    titleLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Color.fromRGBO(0, 0, 0, 0.85),
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(0, 0, 0, 0.85),
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(0, 0, 0, 0.85),
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(0, 0, 0, 0.85),
    ),
    headlineSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: Color.fromRGBO(119, 185, 248, 1.0),
    ),
    headlineMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Color.fromRGBO(119, 185, 248, 1.0),
    ),
    headlineLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Color.fromRGBO(119, 185, 248, 1.0),
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w200,
      color: Color.fromRGBO(168, 168, 168, 1),
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(168, 168, 168, 1),
    ),
    labelLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Color.fromRGBO(167, 209, 249, 1),
    ),
  ),
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: Color.fromRGBO(167, 209, 249, 1),
    onPrimary: Color.fromRGBO(249, 249, 249, 1),
    secondary: Color.fromRGBO(119, 185, 248, 1),
    onSecondary: Color.fromRGBO(168, 168, 168, 1),
    tertiary: Color.fromRGBO(190, 224, 255, 1),
    error: Color.fromRGBO(255, 103, 103, 1),
    onError: Color.fromRGBO(255, 103, 103, 1),
    inverseSurface: Color.fromRGBO(111, 211, 126, 1),
    onInverseSurface: Color.fromRGBO(111, 211, 126, 1),
    surfaceTint: Color.fromRGBO(233, 191, 22, 1),
    surface: Colors.white,
    onSurface: Colors.white,
    surfaceContainer: Colors.black,
    surfaceDim: Color.fromRGBO(217, 217, 217, 0.3),
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Color.fromRGBO(255, 255, 255, 1),
  ),
  dividerTheme: const DividerThemeData(
    color: Color.fromRGBO(168, 168, 168, 1),
    thickness: 2,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0.85),
      foregroundColor: const Color.fromRGBO(190, 224, 255, 1),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ),
  ),
);
