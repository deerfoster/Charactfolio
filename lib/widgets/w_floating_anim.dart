import 'package:flutter/material.dart';

class FloatingBoxText extends StatefulWidget{
  final Widget child;
  final Duration duration;
  final double distance;

  const FloatingBoxText({
    super.key,
    required this.child,
    this.duration = const Duration(seconds: 2),
    this.distance = 8.0,
  });

  @override
  State<FloatingBoxText> createState() => _FloatingBoxTextState();
}

class _FloatingBoxTextState extends State<FloatingBoxText>
  with SingleTickerProviderStateMixin {
    late final AnimationController _controller;
    late final Animation<double> _animation;

    @override
    void initState() {
      super.initState();
      _controller = AnimationController(
        vsync: this,
        duration: widget.duration,

      )..repeat(reverse: true);

      _animation = Tween<double>(
        begin:  -widget.distance,
        end: widget.distance,
      ).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
      );
    }
    @override
    void dispose(){
      _controller.dispose();
      super.dispose();
    }
    @override
    Widget build(BuildContext context){
      return AnimatedBuilder(
        animation: _animation, 
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0, _animation.value),
            child: child,
            );
        },
        child: widget.child,
      );
    }
}