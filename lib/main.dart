import 'package:flutter/material.dart';
import 'package:animation_learning/initial_animation/initial_animation.dart';
import 'package:animation_learning/animated_widget/animation_with_animated_widget.dart';
import 'package:animation_learning/animated_builder/animation_with_animated_builder.dart';
import 'package:animation_learning/animation_with_status_listeners/animation_with_status_listener.dart';
import 'package:animation_learning/simultaneous_animation/simultaneous_animation.dart';
import 'package:animation_learning/implicit_animations/fadein_text.dart';
import 'package:animation_learning/implicit_animations/random_container_animation.dart';
import 'package:animation_learning/hero_animations/standard/hero_animation.dart';
import 'package:animation_learning/hero_animations/radial/RadialAnimation.dart';

//NOTE: You can Put any of the following widgets in the home property of MaterialApp to see the animation

// THESE ANIMATIONS ARE SAME BUT IMPLEMENTATION IS DIFFERENT [GROW ANIMATION]
// InitialAnimation()
// AnimationWithAnimatedWidget()
// AnimationWithAnimatedBuilder()
// SimultaneousAnimation()

// [EASE IN ANIMATION]
// AnimationWithStatusListeners()

// [IMPLICIT ANIMATIONS]
// FadeInImplicitAnimation()

// [HERO ANIMATIONS]
// RadialAnimation()
// HeroAnimation()

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HeroAnimation(),
    );
  }
}
