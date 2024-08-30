import 'package:flutter/material.dart';
import 'package:study/theme/app_color.dart';
import 'package:study/theme/custom_theme.dart';
import 'package:study/theme/user_theme.dart';

ThemeData customAppTheme(ThemeMode mode) {
  /// 현재 테마에 맞는 AppColor instance 생성
  final appColor = AppColor(mode: mode);

  return ThemeData(
    scaffoldBackgroundColor: appColor.background,
    extensions: <ThemeExtension>[
      UserThemeExtension(appColor: appColor),
      CustomAppThemeExtension(appColor: appColor),
    ],
  );
}

extension ThemeDataExtension on ThemeData {
  CustomAppThemeExtension get appColorTheme =>
      extension<CustomAppThemeExtension>()!;
  UserThemeExtension get userColorTheme => extension<UserThemeExtension>()!;
}
