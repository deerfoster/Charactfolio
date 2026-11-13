import 'package:flutter/material.dart';
import 'package:charactfolio_/exports/app_exports.dart';

class CharactfolioAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CharactfolioAppBar({super.key});

  @override
  Widget build(BuildContext context){
    return AppBar(
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
        Padding(padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
        child: CharactfolioButton(
          ch_imageBtton_normal: 'assets/images/landingAppBarBttonOff.png', 
          ch_imageBtton_pressed: 'assets/images/landingAppBarBttonOn.png', 
          ch_labelBtton: '', 
          onPressed: (){})
        ),
        actionsPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
        actions: [
          CharactfolioButton(
            ch_imageBtton_normal: 'assets/images/developerBttonOff.png', 
            ch_imageBtton_pressed: 'assets/images/developerBttonOn.png', 
            width: 150.0,
            height: 60.0, 
            onPressed: (){})
        ],
      );
  }
  @override
  Size get preferredSize => const Size.fromHeight(70.0);
}