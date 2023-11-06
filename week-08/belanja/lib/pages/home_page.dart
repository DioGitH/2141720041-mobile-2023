import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/footer.dart';
import 'package:belanja/widgets/grid_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(133, 1, 204, 255),
        title: const Text('Home Page'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: GridViewWidget(),
      ),
      bottomNavigationBar: FooterWidget(),
    );
  }
}
