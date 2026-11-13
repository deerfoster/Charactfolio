import 'package:flutter/material.dart';

abstract class CharactfolioColorsApp(){
  static const Color dashboardColor = Color(0xFFEDE3C8);
  static const Color color2 = Color(0XFFC1A0AC);
  static const Color color3 = Color(0XFFF0D9E4);
  static const Color color4 = Color(0XFF806C79);
  static const Color color5 = Color(0xFF4A3F4B);
  static const Color color6 = Color(0xFF16131F);

  static final ThemeData charactfolioColor = ThemeData(
    fontFamily: 'fields-of-mistria',
    scaffoldBackgroundColor: dashboardColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: dashboardColor,
      primary: color4,
      secondary: color3,
      surface: color2
      )
    );
}