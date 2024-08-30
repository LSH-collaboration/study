import 'package:flutter/material.dart';

abstract class AppColor {
  factory AppColor({ThemeMode? mode}) {
    if (mode == ThemeMode.light) {
      return LightAppColor();
    } else {
      return DarkAppColor();
    }
  }

  abstract final Color background;
  abstract final Color textPrimary;
  abstract final Color primaryColor;
}

/// Light Theme
class LightAppColor implements AppColor {
  LightAppColor._init();

  static final LightAppColor _instance = LightAppColor._init();

  factory LightAppColor() {
    return _instance;
  }

  @override
  Color get background => Colors.white;

  @override
  Color get textPrimary => Colors.red;

  @override
  Color get primaryColor => Colors.purple.shade200;
}

/// Dark Theme
class DarkAppColor implements AppColor {
  DarkAppColor._init();

  static final DarkAppColor _instance = DarkAppColor._init();

  factory DarkAppColor() {
    return _instance;
  }

  @override
  Color get background => Colors.black;

  @override
  Color get textPrimary => Colors.blue;

  @override
  Color get primaryColor => Colors.purple;
}
