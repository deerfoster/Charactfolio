import 'package:flutter/material.dart';
import 'package:charactfolio_/exports/app_exports.dart';

class CharactfolioMenu extends StatelessWidget{
  const CharactfolioMenu ({super.key});

  @override
  Widget build(BuildContext context){
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
         'assets/images/menuOptionsCard.png',
         width: 320.0,
         height: 260.0,
         fit: BoxFit.fill,
         filterQuality: FilterQuality.none, 
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 3.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 5.0,
              ),
              Image.asset(
                'assets/images/menuTitle.png',
                width: 250.0,
              ),
              SizedBox(
                height: 8.0,
              ),
              CharactfolioButton(
                ch_imageBtton_normal: 'assets/images/bttonBackOff.png',
                ch_imageBtton_pressed: 'assets/images/bttonBackOn.png', 
                ch_labelBtton: 'About me', 
                onPressed: (){}
              ),
              SizedBox(
                height: 1.5,
              ),
              CharactfolioButton(
                ch_imageBtton_normal: 'assets/images/bttonBackOff.png',
                ch_imageBtton_pressed: 'assets/images/bttonBackOn.png', 
                ch_labelBtton: 'Projects', 
                onPressed: (){}
              ),
              SizedBox(
                height: 1.5,
              ),
              CharactfolioButton(
                ch_imageBtton_normal: 'assets/images/bttonBackOff.png',
                ch_imageBtton_pressed: 'assets/images/bttonBackOn.png', 
                ch_labelBtton: 'Socials', 
                onPressed: (){}
              ),
              SizedBox(
                height: 1.5,
              ),
            ],
          ),
        )
      ],
    );
  }
}