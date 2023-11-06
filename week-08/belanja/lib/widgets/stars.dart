import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class StarsWidget extends StatelessWidget {
  StarsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Item;

    int count = 0;
    List<Widget> stars = [];
    while (count < args.rate) {
      stars.add(Icon(Icons.star));
      count++;
    }

    return Row(
      children: stars,
    );
  }
}
