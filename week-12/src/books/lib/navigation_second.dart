import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Second Screen Dio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                color = Color.fromARGB(255, 229, 255, 0);
                Navigator.pop(context, color);
              },
              child: const Text('Yellow'),
            ),
            ElevatedButton(
              onPressed: () {
                color = Color.fromARGB(255, 191, 0, 255);
                Navigator.pop(context, color);
              },
              child: const Text('Purple'),
            ),
            ElevatedButton(
              onPressed: () {
                color = const Color.fromARGB(255, 210, 105, 25);
                Navigator.pop(context, color);
              },
              child: const Text('Orange'),
            ),
          ],
        ),
      ),
    );
  }
}
