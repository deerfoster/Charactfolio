import 'package:flutter/material.dart';
import 'package:charactfolio_/themes/app_themes.dart';
import 'package:charactfolio_/screens/homescreen.dart';

void main(){
  runApp(const CharactfolioApp_());
}
class CharactfolioApp_ extends StatelessWidget{
  const CharactfolioApp_({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CharactfolioColorsApp.charactfolioColor,
      home: HomeScreen(),
    );
  }
}
