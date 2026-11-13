import 'package:flutter/material.dart';
import 'package:charactfolio_/exports/app_exports.dart';


class CharactfolioAnimateSprites extends StatefulWidget {
  final List<String> images;
  final Duration duration;
  final double? width;
  final double? height;

    const CharactfolioAnimateSprites({
    super.key,
    required this.images,
    this.duration = const Duration(milliseconds: 900),
    this.width,
    this.height,
  });

  @override
  State<CharactfolioAnimateSprites> createState() => _CharactfolioAnimatesSpritesState();
}

class _CharactfolioAnimatesSpritesState extends State<CharactfolioAnimateSprites> {
  int _currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(widget.duration, (timer) {
      if(mounted && widget.images.isNotEmpty){
        setState(() {
          _currentIndex = (_currentIndex + 1) % widget.images.length;
        });
      }
    });
  }

  @override
  void dispose(){
    _timer?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    return Image.asset(
      widget.images[_currentIndex],
      width: widget.width,
      height: widget.height,
      fit: BoxFit.contain,
      filterQuality: FilterQuality.none,
      gaplessPlayback: true,
    );
  }
}

