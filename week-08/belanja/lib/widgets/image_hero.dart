import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ImageHeroWidget extends StatelessWidget {
  const ImageHeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Item;

    return Hero(
      tag: args.picture,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Image.asset(
          args.picture,
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
