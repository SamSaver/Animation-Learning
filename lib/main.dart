import 'package:flutter/material.dart';
import 'package:animation_learning/initial_animation/initial_animation.dart';
import 'package:animation_learning/animated_widget/animation_with_animated_widget.dart';
import 'package:animation_learning/animated_builder/animation_with_animated_builder.dart';
import 'package:animation_learning/animation_with_status_listeners/animation_with_status_listener.dart';
import 'package:animation_learning/simultaneous_animation/simultaneous_animation.dart';

//NOTE: You can Put any of the following widgets in the home property of MaterialApp to see the animation

// InitialAnimation()
// AnimationWithAnimatedWidget()
// AnimationWithAnimatedBuilder()
// AnimationWithStatusListeners()
// SimultaneousAnimation()

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
        primarySwatch: Colors.green,
      ),
      home: const SimultaneousAnimation(),
    );
  }
}