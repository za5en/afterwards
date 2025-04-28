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

final _light = ThemeData();

final _dark = ThemeData();
