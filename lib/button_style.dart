// import 'package:flutter/material.dart';
// import 'package:mcq_std/shared/theme/theme_extensions/app_colors_extension.dart';
// import 'package:mcq_std/shared/theme/theme_extensions/app_text_extension.dart';

// enum ButtonType { filled, outlinedBlack, outlinedBlue, text }

// class UrButtonStyleExtension extends ThemeExtension<UrButtonStyleExtension> {
//   final ButtonStyle filled;
//   final ButtonStyle outlinedBlack;
//   final ButtonStyle outlinedBlue;
//   final ButtonStyle text;

//   final Color filledTextColor;
//   final Color filledIconColor;
//   final Color outlinedBlackTextColor;
//   final Color outlinedBlackIconColor;
//   final Color outlinedBlueTextColor;
//   final Color outlinedBlueIconColor;
//   final Color textTextColor;
//   final Color textIconColor;
//   final Color disabledTextColor;
//   final Color disabledIconColor;

//   const UrButtonStyleExtension({
//     required this.filled,
//     required this.outlinedBlack,
//     required this.outlinedBlue,
//     required this.text,
//     required this.filledTextColor,
//     required this.filledIconColor,
//     required this.outlinedBlackTextColor,
//     required this.outlinedBlackIconColor,
//     required this.outlinedBlueTextColor,
//     required this.outlinedBlueIconColor,
//     required this.textTextColor,
//     required this.textIconColor,
//     required this.disabledTextColor,
//     required this.disabledIconColor,
//   });

//   @override
//   UrButtonStyleExtension copyWith({
//     ButtonStyle? filled,
//     ButtonStyle? outlinedBlack,
//     ButtonStyle? outlinedBlue,
//     ButtonStyle? text,
//     Color? filledTextColor,
//     Color? filledIconColor,
//     Color? outlinedBlackTextColor,
//     Color? outlinedBlackIconColor,
//     Color? outlinedBlueTextColor,
//     Color? outlinedBlueIconColor,
//     Color? textTextColor,
//     Color? textIconColor,
//     Color? disabledTextColor,
//     Color? disabledIconColor,
//   }) {
//     return UrButtonStyleExtension(
//       filled: filled ?? this.filled,
//       outlinedBlack: outlinedBlack ?? this.outlinedBlack,
//       outlinedBlue: outlinedBlue ?? this.outlinedBlue,
//       text: text ?? this.text,
//       filledTextColor: filledTextColor ?? this.filledTextColor,
//       filledIconColor: filledIconColor ?? this.filledIconColor,
//       outlinedBlackTextColor:
//           outlinedBlackTextColor ?? this.outlinedBlackTextColor,
//       outlinedBlackIconColor:
//           outlinedBlackIconColor ?? this.outlinedBlackIconColor,
//       outlinedBlueTextColor:
//           outlinedBlueTextColor ?? this.outlinedBlueTextColor,
//       outlinedBlueIconColor:
//           outlinedBlueIconColor ?? this.outlinedBlueIconColor,
//       textTextColor: textTextColor ?? this.textTextColor,
//       textIconColor: textIconColor ?? this.textIconColor,
//       disabledTextColor: disabledTextColor ?? this.disabledTextColor,
//       disabledIconColor: disabledIconColor ?? this.disabledIconColor,
//     );
//   }

//   @override
//   UrButtonStyleExtension lerp(
//       ThemeExtension<UrButtonStyleExtension>? other, double t) {
//     if (other is! UrButtonStyleExtension) {
//       return this;
//     }
//     return UrButtonStyleExtension(
//       filled: ButtonStyle.lerp(filled, other.filled, t)!,
//       outlinedBlack: ButtonStyle.lerp(outlinedBlack, other.outlinedBlack, t)!,
//       outlinedBlue: ButtonStyle.lerp(outlinedBlue, other.outlinedBlue, t)!,
//       text: ButtonStyle.lerp(text, other.text, t)!,
//       filledTextColor: Color.lerp(filledTextColor, other.filledTextColor, t)!,
//       filledIconColor: Color.lerp(filledIconColor, other.filledIconColor, t)!,
//       outlinedBlackTextColor:
//           Color.lerp(outlinedBlackTextColor, other.outlinedBlackTextColor, t)!,
//       outlinedBlackIconColor:
//           Color.lerp(outlinedBlackIconColor, other.outlinedBlackIconColor, t)!,
//       outlinedBlueTextColor:
//           Color.lerp(outlinedBlueTextColor, other.outlinedBlueTextColor, t)!,
//       outlinedBlueIconColor:
//           Color.lerp(outlinedBlueIconColor, other.outlinedBlueIconColor, t)!,
//       textTextColor: Color.lerp(textTextColor, other.textTextColor, t)!,
//       textIconColor: Color.lerp(textIconColor, other.textIconColor, t)!,
//       disabledTextColor:
//           Color.lerp(disabledTextColor, other.disabledTextColor, t)!,
//       disabledIconColor:
//           Color.lerp(disabledIconColor, other.disabledIconColor, t)!,
//     );
//   }

//   static UrButtonStyleExtension buttonTypes(
//       UrAppColorsExtension appColors, UrAppTextThemeExtension text) {
//     return UrButtonStyleExtension(
//       filled: ButtonStyle(
//         overlayColor: WidgetStateProperty.all(Colors.transparent),
//         foregroundColor: WidgetStateProperty.resolveWith((states) {
//           if (states.contains(WidgetState.disabled)) {
//             return appColors.text02Row;
//           } else {
//             return appColors.text00;
//           }
//         }),
//         surfaceTintColor: WidgetStateProperty.all(Colors.transparent),
//         shadowColor: WidgetStateProperty.all(Colors.transparent),
//         // highlightColor: WidgetStateProperty.all(Colors.transparent),
//         // button background color
//         backgroundColor: WidgetStateProperty.resolveWith((states) {
//           if (states.contains(WidgetState.pressed)) {
//             return appColors.blue09;
//           } else if (states.contains(WidgetState.hovered)) {
//             return appColors.blue08;
//           } else if (states.contains(WidgetState.disabled)) {
//             return appColors.bg00;
//           }

//           /// default color
//           return appColors.primary01;
//         }),
//         shape: WidgetStateProperty.all(
//           RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(
//               12.0,
//             ),
//           ),
//         ),
//         textStyle: WidgetStateProperty.resolveWith(
//           (states) {
//             if (states.contains(WidgetState.disabled)) {
//               return text.text18Semibold.copyWith(color: appColors.text02Row);
//             } else {
//               return text.text18Semibold.copyWith(color: appColors.text00);
//             }
//           },
//         ),
//         // padding: WidgetStateProperty.all(EdgeInsets.symmetric(
//         //   vertical: 16.0,
//         //   horizontal: 28.0,
//         // )),
//       ),
//       outlinedBlack: ButtonStyle(
//         overlayColor: WidgetStateProperty.all(Colors.transparent),
//         foregroundColor: WidgetStateProperty.all(appColors.text03High),
//         surfaceTintColor: WidgetStateProperty.all(Colors.transparent),
//         shadowColor: WidgetStateProperty.all(Colors.transparent),
//         // button background color
//         backgroundColor: WidgetStateProperty.resolveWith((states) {
//           if (states.contains(WidgetState.pressed)) {
//             return appColors.bg04;
//           } else if (states.contains(WidgetState.hovered)) {
//             return appColors.bg03;
//           } else if (states.contains(WidgetState.disabled)) {
//             return appColors.bg02;
//           }

//           /// default color
//           return appColors.bg00;
//         }),
//         shape: WidgetStateProperty.resolveWith(
//           (states) {
//             if (states.contains(WidgetState.pressed)) {
//               return RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(
//                   12.0,
//                 ),
//                 side: BorderSide(
//                   color: appColors.line02,
//                   width: 2,
//                 ),
//               );
//             } else if (states.contains(WidgetState.hovered)) {
//               return RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(
//                   12.0,
//                 ),
//                 side: BorderSide(
//                   color: appColors.line02,
//                   width: 2,
//                 ),
//               );
//             } else if (states.contains(WidgetState.disabled)) {
//               return RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(
//                   12.0,
//                 ),
//               );
//             }

//             /// default style
//             return RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(
//                 12.0,
//               ),
//               side: BorderSide(
//                 color: appColors.line01,
//                 width: 2,
//               ),
//             );
//           },
//         ),
//         textStyle: WidgetStateProperty.resolveWith((states) {
//           if (states.contains(WidgetState.disabled)) {
//             return text.text18Semibold.copyWith(color: appColors.text02Row);
//           } else {
//             return text.text18Semibold.copyWith(color: appColors.text03High);
//           }
//         }),
//       ),
//       outlinedBlue: ButtonStyle(
//         overlayColor: WidgetStateProperty.all(Colors.transparent),
//         foregroundColor: WidgetStateProperty.all(appColors.text04Primary),
//         surfaceTintColor: WidgetStateProperty.all(Colors.transparent),
//         shadowColor: WidgetStateProperty.all(Colors.transparent),
//         // button background color
//         backgroundColor: WidgetStateProperty.resolveWith((states) {
//           if (states.contains(WidgetState.pressed)) {
//             return appColors.blue05IconRow;
//           } else if (states.contains(WidgetState.hovered)) {
//             return appColors.blue03;
//           } else if (states.contains(WidgetState.disabled)) {
//             return appColors.bg02;
//           }

//           /// default color
//           return appColors.bg03;
//         }),
//         shape: WidgetStateProperty.resolveWith((states) {
//           if (states.contains(WidgetState.pressed)) {
//             return RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(
//                 12.0,
//               ),
//               side: BorderSide(
//                 color: appColors.line03,
//                 width: 2,
//               ),
//             );
//           } else if (states.contains(WidgetState.hovered)) {
//             return RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(
//                 12.0,
//               ),
//               side: BorderSide(
//                 color: appColors.line03,
//                 width: 2,
//               ),
//             );
//           } else if (states.contains(WidgetState.disabled)) {
//             return RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(
//                 12.0,
//               ),
//             );
//           }

//           /// default style
//           return RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(
//               12.0,
//             ),
//             side: BorderSide(
//               color: appColors.line03,
//               width: 2,
//             ),
//           );
//         }),
//         textStyle: WidgetStateProperty.resolveWith((states) {
//           if (states.contains(WidgetState.disabled)) {
//             return text.text18Semibold.copyWith(color: appColors.text02Row);
//           } else {
//             return text.text18Semibold.copyWith(color: appColors.text04Primary);
//           }
//         }),
//       ),
//       text: ButtonStyle(
//         overlayColor: WidgetStateProperty.all(Colors.transparent),
//         foregroundColor: WidgetStateProperty.resolveWith((states) {
//           if (states.contains(WidgetState.disabled)) {
//             return appColors.text01;
//           } else if (states.contains(WidgetState.pressed)) {
//             return appColors.text03High;
//           } else if (states.contains(WidgetState.hovered)) {
//             return appColors.text05Dark;
//           } else {
//             return appColors.primary01;
//           }
//         }),
//         surfaceTintColor: WidgetStateProperty.all(Colors.transparent),
//         shadowColor: WidgetStateProperty.all(Colors.transparent),
//         textStyle: WidgetStateProperty.resolveWith((states) {
//           if (states.contains(WidgetState.disabled)) {
//             return text.text18Semibold.copyWith(color: appColors.text01);
//           } else if (states.contains(WidgetState.pressed)) {
//             return text.text18Semibold.copyWith(color: appColors.text03High);
//           } else if (states.contains(WidgetState.hovered)) {
//             return text.text18Semibold.copyWith(color: appColors.text05Dark);
//           } else {
//             return text.text18Semibold.copyWith(color: appColors.primary01);
//           }
//         }),
//       ),
//       filledTextColor: appColors.text00,
//       filledIconColor: appColors.gray00,
//       outlinedBlackTextColor: appColors.text03High,
//       outlinedBlackIconColor: appColors.gray05IconHigh,
//       outlinedBlueTextColor: appColors.text04Primary,
//       outlinedBlueIconColor: appColors.primary01,
//       textTextColor: appColors.text04Primary,
//       textIconColor: appColors.primary01,
//       disabledTextColor: appColors.gray03IconRow,
//       disabledIconColor: appColors.gray03IconRow,
//     );
//   }

//   ButtonStyle getButtonStyle(ButtonType buttyonType) {
//     switch (buttyonType) {
//       case ButtonType.filled:
//         return filled;
//       case ButtonType.outlinedBlack:
//         return outlinedBlack;
//       case ButtonType.outlinedBlue:
//         return outlinedBlue;
//       case ButtonType.text:
//         return text;
//     }
//   }
// }
