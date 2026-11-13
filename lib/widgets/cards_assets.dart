import 'package:charactfolio_/themes/app_themes.dart';
import 'package:flutter/material.dart';

class CharactfolioCardAsset1 extends StatelessWidget {

  final String ch_image;
  final String ch_title;
  final String ch_description;

  const CharactfolioCardAsset1({
    super.key,
    required this.ch_image,
    required this.ch_title,
    required this.ch_description,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment:Alignment.center,
      children: [
        Image.asset(ch_image,
        width: 200,
        height: 250,
        fit: BoxFit.fill,
        filterQuality: FilterQuality.none,
        ),
        Positioned(
          top: 35,
          bottom: 35,
          left: 30,
          right: 24,
        child: 
          Scrollbar(
            thumbVisibility: true,
            thickness: 6.0,
            radius: Radius.zero,
          child: SingleChildScrollView(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(ch_description,
                textAlign: TextAlign.left,
                softWrap: true,
                  style: const TextStyle(
                    fontSize: 15,
                    height: 1.4,
                    color: CharactfolioColorsApp.color6
                  )
                )
              ],
            ),
          )
          )
        )
      ],
    );
  }

}