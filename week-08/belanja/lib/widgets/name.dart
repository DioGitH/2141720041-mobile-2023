import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as Item;

    return Container(
      child: Text(args.name,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30)),
    );
  }
}