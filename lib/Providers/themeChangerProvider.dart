import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ThemeChangerProvider extends ChangeNotifier {
  var _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;
  void setTheme(ThemeMode) {
    _themeMode = ThemeMode;
    notifyListeners();
  }
}
