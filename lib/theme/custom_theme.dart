import 'package:flutter/material.dart';
import 'package:study/theme/app_color.dart';

class CustomAppThemeExtension extends ThemeExtension<CustomAppThemeExtension>
    implements AppColor {
  CustomAppThemeExtension({required this.appColor});

  final AppColor appColor;

  @override
  ThemeExtension<CustomAppThemeExtension> copyWith() {
    return this;
  }

  @override
  ThemeExtension<CustomAppThemeExtension> lerp(
      covariant ThemeExtension<CustomAppThemeExtension>? other, double t) {
    return this;
  }

  @override
  Color get background => appColor.background;

  @override
  Color get textPrimary => appColor.textPrimary;

  @override
  Color get primaryColor => appColor.primaryColor;

  Size get widgetSize => Size(100.0, 200.0);
}
