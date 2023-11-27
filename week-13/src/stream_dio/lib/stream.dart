import 'package:flutter/material.dart';
import 'dart:async';

class NumberStream {
  final StreamController<int> controller = StreamController<int>();

  // addError() {
  //   controller.sink.addError('error');
  // }

  void addNumberToSink(int newNNumber) {
    controller.sink.add(newNNumber);
  }

  close() {
    controller.close();
  }
}

class ColorStream {
  Stream<Color> getColors() async* {
    yield* Stream.periodic(
      const Duration(seconds: 1),
      (int t) {
        int index = t % colors.length;
        return colors[index];
      },
    );
  }

  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.blueGrey,
    Colors.brown,
    Colors.cyan,
    Colors.yellow,
    Colors.indigo,
  ];
}
