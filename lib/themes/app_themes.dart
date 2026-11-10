import 'package:flutter/material.dart';

abstract class CharactfolioColorsApp(){
  static const Color dashboard_color = Color(0xFFD5C5C8);
  static const Color color2 = Color(0xFFDB7F8E);
  static const Color color3 = Color(0xFFFFDBDA);
  static const Color color4 = Color(0xFF9DA3A4);
  static const Color color5 = Color(0xFF604D53);

  static final ThemeData charactfolioColor = ThemeData(
    scaffoldBackgroundColor: color3,
    colorScheme: ColorScheme.fromSeed(
      seedColor: dashboard_color,
      primary: color2,
      secondary: color5,
      surface: color4
      ));
}