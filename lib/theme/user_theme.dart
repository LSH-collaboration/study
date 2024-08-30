import 'package:flutter/material.dart';
import 'package:study/theme/app_color.dart';

class UserThemeExtension extends ThemeExtension<UserThemeExtension>
    implements AppColor {
  UserThemeExtension({required this.appColor});

  final AppColor appColor;

  @override
  ThemeExtension<UserThemeExtension> copyWith() {
    return this;
  }

  @override
  ThemeExtension<UserThemeExtension> lerp(
      covariant ThemeExtension<UserThemeExtension>? other, double t) {
    return this;
  }

  @override
  Color get background => appColor.background.withOpacity(0.6);

  @override
  Color get textPrimary => appColor.textPrimary.withOpacity(0.6);

  @override
  Color get primaryColor => appColor.primaryColor.withOpacity(0.6);
}
