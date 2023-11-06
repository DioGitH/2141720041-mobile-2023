import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/bottom_navbar.dart';
import 'package:belanja/widgets/image_hero.dart';
import 'package:belanja/widgets/name.dart';
import 'package:belanja/widgets/price.dart';
import 'package:belanja/widgets/stars.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  // const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(133, 1, 204, 255),
        title: const Text('Item Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Column(
            children: [
              ImageHeroWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Name(), Price()],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Rating: '),
                    StarsWidget(),
                  ],
                ),
              ),
              Text(
                'Stock: ' + args.stock.toString(),
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavbarWidget(),
    );
  }
}
