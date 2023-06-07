import 'package:flutter/material.dart';

import '../animated_widget/animated_logo.dart';

class AnimationWithStatusListeners extends StatefulWidget {
  const AnimationWithStatusListeners({super.key});

  @override
  State<AnimationWithStatusListeners> createState() =>
      _AnimationWithStatusListenersState();
}

class _AnimationWithStatusListenersState
    extends State<AnimationWithStatusListeners>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0, end: 300).animate(controller)
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
