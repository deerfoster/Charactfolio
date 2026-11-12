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
        Text(ch_description)
      ],
    );
  }

}