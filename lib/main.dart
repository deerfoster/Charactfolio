import 'package:flutter/material.dart';
import 'package:charactfolio_/exports/app_exports.dart';

void main(){
  runApp(const CharactfolioApp_());
}
class CharactfolioApp_ extends StatelessWidget{
  const CharactfolioApp_({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CharactfolioColorsApp.charactfolioColor,
      initialRoute: CharactfolioRoutes.home,
      routes: CharactfolioRoutes.routes,
    );
  }
}
