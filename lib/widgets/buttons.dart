import 'package:charactfolio_/themes/app_themes.dart';
import 'package:flutter/material.dart';

class CharactfolioButton  extends StatefulWidget{
  const CharactfolioButton ({super.key});

  @override
  State<CharactfolioButton> createState() => _CharactfolioButtonState();
}
class _CharactfolioButtonState extends State<CharactfolioButton>{
  @override
  Widget build(BuildContext context){
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      elevation: 100.0
    );
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: null,
            child: const Text('Un boton'),
            )
        ],
      ),
    );
  }
}
