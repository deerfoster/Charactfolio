import 'package:flutter/material.dart';
import 'package:charactfolio_/exports/app_exports.dart';

class CharactfolioButton  extends StatefulWidget{
  final String ch_imageBtton_normal;
  final String ch_imageBtton_pressed;
  final String? ch_labelBtton;
  final double? width;
  final double? height;
  final VoidCallback onPressed;

  const CharactfolioButton({
    super.key,
    required this.ch_imageBtton_normal,
    required this.ch_imageBtton_pressed,
    this.ch_labelBtton,
    this.width,
    this.height,
    required this.onPressed,
  });

  @override
  State<CharactfolioButton> createState() => _CharactfolioButtonState();
}

class _CharactfolioButtonState extends State<CharactfolioButton> {

  bool _bttonOnPressed = false;

  @override
  Widget build(BuildContext context){
    return GestureDetector(

      onTapDown: (_) {
        setState(() {
          _bttonOnPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _bttonOnPressed = false;
        });
        widget.onPressed();
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            _bttonOnPressed ? widget.ch_imageBtton_pressed : widget.ch_imageBtton_normal,
            width: widget.width,
            height: widget.height,
            fit: BoxFit.contain,
          ),
          if (widget.ch_labelBtton != null)
          Padding(padding: EdgeInsets.only(top: _bttonOnPressed? 4.0 : 0.0),
          child: Text(
            widget.ch_labelBtton!,
            style: const TextStyle(
              color: CharactfolioColorsApp.color6,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ), 
          ),
          )
        ],
      )
    );
  }
}
