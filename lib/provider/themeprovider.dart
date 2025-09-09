import 'package:flutter/material.dart';

class Themeprovider with ChangeNotifier {
  ThemeMode _thememode = ThemeMode.light;

  ThemeMode get thememode => _thememode;

  void setTheme(ThemeMode mode) {
    _thememode = mode;
    notifyListeners();
  }
}
