import 'package:flutter/material.dart';
import 'package:charactfolio_/exports/app_exports.dart';

class ChDeveloperMenu extends StatelessWidget{
  const ChDeveloperMenu ({super.key});

  @override
  Widget build(BuildContext context){
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
         'assets/images/developerCard.png',
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
                height: 18.0,
              ),
              CharactfolioButton(
                ch_imageBtton_normal: 'assets/images/emailBttonDeveloperOff.png',
                ch_imageBtton_pressed: 'assets/images/emailBttonDeveloperOn.png', 
                ch_labelBtton: '',
                width: 253.0,
                height: 75.0, 
                onPressed: (){
                  urlFinder('mailto: Xariadnzoe@gmail.com');
                }
              ),
              SizedBox(
                height: 10.0,
              ),
              CharactfolioButton(
                ch_imageBtton_normal: 'assets/images/githubBttonDeveloperOff.png',
                ch_imageBtton_pressed: 'assets/images/githubBttonDeveloperOn.png', 
                ch_labelBtton: '',
                width: 253.0,
                height: 75.0,  
                onPressed: (){
                  urlFinder('https://github.com/deerfoster');
                }
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