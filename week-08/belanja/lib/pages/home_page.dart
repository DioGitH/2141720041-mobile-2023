import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Router 1',
        price: 200000,
        stock: 5,
        rate: 4,
        picture: 'assets/images/r1.jpg'),
    Item(
        name: 'Router 2',
        price: 5000,
        stock: 5,
        rate: 4,
        picture: 'assets/images/r2.jpg'),
    Item(
        name: 'Router 3',
        price: 5000,
        stock: 5,
        rate: 4,
        picture: 'assets/images/r3.jpg'),
    Item(
        name: 'Router 4',
        price: 5000,
        stock: 5,
        rate: 4,
        picture: 'assets/images/r4.jpg'),
    Item(
        name: 'Router 5',
        price: 5000,
        stock: 5,
        rate: 4,
        picture: 'assets/images/r5.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(133, 1, 204, 255),
        title: const Text('Home Page'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            childAspectRatio: 0.7,
          ),
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Column(
                  children: [
                    Center(
                      child: Hero(
                          tag: item.picture, child: Image.asset(item.picture)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(item.name),
                          ),
                          Expanded(
                            child: Text(
                              'Rp ' + item.price.toString(),
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text('Stock: ' + item.stock.toString()),
                          ),
                          Expanded(
                            child: Text('Rate: ' + item.rate.toString(),
                                textAlign: TextAlign.end),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 170, 255),
            border: Border.all(color: Colors.black87, width: 1)),
        child: Column(
          children: [
            Text('Maulidio Farhan Rizkullah'),
            Text('2141720041'),
          ],
        ),
      ),
    );
  }
}
