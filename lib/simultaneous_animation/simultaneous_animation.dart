import 'package:animation_learning/simultaneous_animation/animated_logo.dart';
import 'package:flutter/material.dart';

class SimultaneousAnimation extends StatefulWidget {
  const SimultaneousAnimation({super.key});

  @override
  State<SimultaneousAnimation> createState() => _SimultaneousAnimationState();
}

class _SimultaneousAnimationState extends State<SimultaneousAnimation>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
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
