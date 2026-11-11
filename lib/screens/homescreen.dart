import 'package:charactfolio_/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:pixelarticons/pixelarticons.dart';
import 'package:charactfolio_/widgets/buttons.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CharactfolioColorsApp.color5,
        foregroundColor: CharactfolioColorsApp.color3,
        toolbarHeight: 70.0,
        elevation: 2.5,
        shadowColor: CharactfolioColorsApp.color6,
        title: SizedBox(
          height: 30.0,
          child: Image.asset('assets/images/Logo.png'),
        ),
        leading:
        Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 3.0, vertical: 3.0),
        child: IconButton(icon: const Icon(Pixel.menu), onPressed: (){})
        ),
        actionsPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
        actions: [
          IconButton(
            icon: 
            const Icon(Pixel.snail),
            onPressed: null
          ),
          IconButton(
            icon:
            const Icon(Pixel.alien),
            onPressed: null,
          ),
          IconButton(
            icon:
            const Icon(Pixel.star),
            onPressed: null,
          )
        ],
      ),
      body: 
      const CharactfolioButton(),
    );
  }
}