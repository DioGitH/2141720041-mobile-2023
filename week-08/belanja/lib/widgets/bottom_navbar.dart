import 'package:flutter/material.dart';

class BottomNavbarWidget extends StatelessWidget {
  const BottomNavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
