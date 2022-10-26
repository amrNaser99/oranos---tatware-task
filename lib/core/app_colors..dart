
import 'dart:math';

import 'package:flutter/material.dart';

class AppColors {

  static const Color main = Color(0xff1A1818);
  static const Color border = Color(0xffcfd9de);
  static Color? lightGrey = Colors.grey[300];
  static const Color mainGreen = Color(0xff16919b);
  static const Color rgb119131143 = Color(0xff77838f);
  static const Color success = Color(0xff1bc5bd);
  static const Color danger = Color(0xfff64e60);
  static const Color warnng = Color(0xffffa800);
  static const Color blue = Color(0xff3699ff);

  static MaterialColor generateMaterialColor(Color color) {
    return MaterialColor(color.value, {
      50: tintColor(color, 0.9),
      100: tintColor(color, 0.8),
      200: tintColor(color, 0.6),
      300: tintColor(color, 0.4),
      400: tintColor(color, 0.2),
      500: color,
      600: shadeColor(color, 0.1),
      700: shadeColor(color, 0.2),
      800: shadeColor(color, 0.3),
      900: shadeColor(color, 0.4),
    });
  }
  static int tintValue(int value, double factor) =>
      max(0, min((value + ((255 - value) * factor)).round(), 255));
  static Color tintColor(Color color, double factor) => Color.fromRGBO(
      tintValue(color.red, factor),
      tintValue(color.green, factor),
      tintValue(color.blue, factor),
      1);
  static Color shadeColor(Color color, double factor) => Color.fromRGBO(
      shadeValue(color.red, factor),
      shadeValue(color.green, factor),
      shadeValue(color.blue, factor),
      1);

  static int shadeValue(int value, double factor) =>
      max(0, min(value - (value * factor).round(), 255));

}



