import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  // const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Item;

    Widget price = Container(
      padding: EdgeInsets.all(4),
      child: Text(
        'Rp ' + args.price.toString(),
        style: TextStyle(fontSize: 30),
      ),
    );

    Widget name = Container(
      child: Text(args.name,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30)),
    );

    Widget image = Hero(
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

    int count = 0;
    List<Widget> stars = [];
    while (count < args.rate) {
      stars.add(Icon(Icons.star));
      count++;
    }

    Widget rating = Row(
      children: stars,
    );

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
              image,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [name, price],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Rating: '),
                    rating,
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
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(8),
        height: 70,
        child: Row(
          children: [
            Icon(
              Icons.chat,
              size: 60,
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Masukkan Keranjang'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
