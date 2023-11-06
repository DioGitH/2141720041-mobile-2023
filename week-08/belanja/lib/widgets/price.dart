
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  Price({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Item;
    return Container(
      padding: EdgeInsets.all(4),
      child: Text(
        'Rp ' + args.price.toString(),
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}