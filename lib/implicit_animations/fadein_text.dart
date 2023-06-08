import 'package:flutter/material.dart';

const owlUrl =
    'https://i.natgeofe.com/n/d5863c64-a28c-4e30-9ee8-ecc4175e8439/NationalGeographic_2745282_square.jpg';

class FadeInImplicitAnimation extends StatefulWidget {
  const FadeInImplicitAnimation({Key? key}) : super(key: key);

  @override
  State<FadeInImplicitAnimation> createState() =>
      _FadeInImplicitAnimationState();
}

class _FadeInImplicitAnimationState extends State<FadeInImplicitAnimation> {
  double opacity = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Implicit Animations'),
      ),
      body: Column(children: <Widget>[
        Image.network(owlUrl),
        TextButton(
            child: const Text(
              'Show Details',
              style: TextStyle(color: Colors.blueAccent),
            ),
            onPressed: () => {
                  setState(() {
                    opacity = 1.0 - opacity;
                  })
                }),
        AnimatedOpacity(
          opacity: opacity,
          duration: const Duration(seconds: 1),
          child: Column(
            children: const [
              Text('Type: Owl'),
              Text('Age: 23'),
              Text('Employment: Flutter App Developer'),
            ],
          ),
        )
      ]),
    );
  }
}
