import 'package:flutter/material.dart';

class NormalPhoto extends StatelessWidget {
  const NormalPhoto(
      {Key? key, required this.photo, required this.color, required this.onTap})
      : super(key: key);

  final String photo;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor.withOpacity(0.25),
      child: InkWell(
          onTap: onTap,
          child: Image.network(
            photo,
            fit: BoxFit.contain,
          )),
    );
  }
}
