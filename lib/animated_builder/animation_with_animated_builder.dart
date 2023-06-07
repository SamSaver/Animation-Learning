import 'package:animation_learning/animated_builder/grow_transition.dart';
import 'package:animation_learning/animated_builder/logo_widget.dart';
import 'package:flutter/material.dart';

class AnimationWithAnimatedBuilder extends StatefulWidget {
  const AnimationWithAnimatedBuilder({super.key});

  @override
  State<AnimationWithAnimatedBuilder> createState() =>
      _AnimationWithAnimatedBuilderState();
}

class _AnimationWithAnimatedBuilderState
    extends State<AnimationWithAnimatedBuilder>
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
  Widget build(BuildContext context) {
    return GrowTransition(
      animation: animation,
      child: const LogoWidget(),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
