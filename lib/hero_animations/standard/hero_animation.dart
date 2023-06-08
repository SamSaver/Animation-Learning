import 'package:animation_learning/hero_animations/standard/ImageHero.dart';
import 'package:flutter/material.dart';

class HeroAnimation extends StatelessWidget {
  const HeroAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var timeDilation = 5.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Standard Hero Animation'),
      ),
      body: Center(
        child: ImageHero(
          photo:
              'https://i.natgeofe.com/n/d5863c64-a28c-4e30-9ee8-ecc4175e8439/NationalGeographic_2745282_square.jpg',
          width: 300.0,
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (BuildContext context) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text('Owl Page'),
                ),
                body: Container(
                  color: Colors.lightBlueAccent,
                  padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.topLeft,
                  child: ImageHero(
                    photo:
                        'https://i.natgeofe.com/n/d5863c64-a28c-4e30-9ee8-ecc4175e8439/NationalGeographic_2745282_square.jpg',
                    width: 100.0,
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              );
            }));
          },
        ),
      ),
    );
  }
}
