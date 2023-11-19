import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;

  _showColorDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very importan question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                color = const Color.fromARGB(255, 0, 0, 0);
                Navigator.pop(context, color);
              },
              child: const Text('Black'),
            ),
            TextButton(
              onPressed: () {
                color = Color.fromARGB(255, 19, 225, 222);
                Navigator.pop(context, color);
              },
              child: const Text('Ocean'),
            ),
            TextButton(
              onPressed: () {
                color = Colors.pinkAccent;
                Navigator.pop(context, color);
              },
              child: const Text('Pink'),
            ),
          ],
        );
      },
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen Dio'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _showColorDialog(context);
          },
        ),
      ),
    );
  }
}
