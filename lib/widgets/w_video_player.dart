import 'package:flutter/material.dart';
import 'package:charactfolio_/exports/app_exports.dart';

class ChVideoPlayer extends StatefulWidget{
  final String videoPath;
  final bool isBackground;

  const ChVideoPlayer({
    super.key,
    required this.videoPath,
    this.isBackground = true,
  });

  @override
  State<ChVideoPlayer> createState() => _ChVideoPlayerState();
}

class _ChVideoPlayerState extends State<ChVideoPlayer>{
  late VideoPlayerController _controller;

  @override
  void initState(){
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoPath)
    ..initialize().then((_) {
      _controller.setLooping(true);
      _controller.setVolume(0.0);
      _controller.play();
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    if (!_controller.value.isInitialized) {
      return const SizedBox.shrink();
    }
    if (!widget.isBackground) {
      return AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: VideoPlayer(_controller),
      );
    }
    return SizedBox.expand(
      child: FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
          width: _controller.value.size.width,
          height: _controller.value.size.height,
          child: VideoPlayer(_controller),
        ),
      ),
    );
  }
}
