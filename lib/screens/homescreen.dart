import 'package:flutter/material.dart';
import 'package:charactfolio_/exports/app_exports.dart';

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
          child: 
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/Logo.png',
                width: 110.0,
                height: 100.0,
                ),
            ],
          ),
        ),
        leading:
        Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 2.0, vertical: 3.0),
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
      Column(
        children: [
          const SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/welcomeTitle.png',
                fit: BoxFit.contain,
                width: 300.0,
                filterQuality: FilterQuality.none,
              )
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/xari.png',
                    fit: BoxFit.contain,
                    width: 150.0,
                    filterQuality: FilterQuality.none,
                  ),
                  const SizedBox(
                    height: 10.0,
                  )
                ],
              ),
              const SizedBox(
                width: 20.0,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                  children: [
                    CharactfolioCardAsset1(
                      ch_image: 'assets/images/cardBackground1.png',
                      ch_title: 'prueba',
                      ch_description: 'Hi there! Charactfolio is an app made with flutter & dart, works as a portfolio inspired by the game "Fields Of Mistria" a farming sim video game developed and published by NPC studio.'
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
            ],
          ),
            const SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CharactfolioMenu(),
            )
        ],
      )
    );
  }
}