import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
