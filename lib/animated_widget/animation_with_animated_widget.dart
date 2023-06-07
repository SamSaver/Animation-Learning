import 'package:animation_learning/animated_widget/animated_logo.dart';
import 'package:flutter/material.dart';

class AnimationWithAnimatedWidget extends StatefulWidget {
  const AnimationWithAnimatedWidget({super.key});

  @override
  State<AnimationWithAnimatedWidget> createState() =>
      _AnimationWithAnimatedWidgetState();
}

class _AnimationWithAnimatedWidgetState
    extends State<AnimationWithAnimatedWidget>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0, end: 300).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) => AnimatedLogo(animation: animation);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
