import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget blueBox = Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );

    Widget biggerBlueBox = Container(
      width: 50,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );

    Widget row = Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        blueBox,
        biggerBlueBox,
        blueBox,
      ],
    );

    Widget row2 = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        blueBox,
        blueBox,
        blueBox,
      ],
    );

    Widget row3 = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        blueBox,
        Flexible(
          fit: FlexFit.loose,
          flex: 1,
          child: blueBox,
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: blueBox,
        ),
      ],
    );

    Widget row4 = Row(
      children: [
        blueBox,
        Expanded(
          child: blueBox,
        ),
        blueBox,
      ],
    );

    Widget row5 = Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        blueBox,
        const SizedBox(
          width: 50,
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: blueBox,
        ),
        blueBox,
      ],
    );

    Widget row6 = Row(
      children: [
        blueBox,
        const Spacer(flex: 1),
        blueBox,
        blueBox,
      ],
    );

    Widget column = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        blueBox,
        blueBox,
        blueBox,
      ],
    );

    Widget text = Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      children: const [
        Text(
          'Hey!',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Futura',
            color: Colors.blue,
          ),
        ),
        Text(
          'Hey!',
          style: TextStyle(
            fontSize: 50,
            fontFamily: 'Futura',
            color: Colors.green,
          ),
        ),
        Text(
          'Hey!',
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'Futura',
            color: Colors.red,
          ),
        ),
      ],
    );

    Widget icon = Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      children: const [
        Icon(
          Icons.widgets,
          size: 50,
          color: Colors.blue,
        ),
        Icon(
          Icons.widgets,
          size: 50,
          color: Colors.red,
        ),
      ],
    );

    Widget image = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
            'https://raw.githubusercontent.com/flutter/website/main/examples/layout/sizing/images/pic2.jpg'),
      ],
    );

    Widget finalPart = Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.account_circle, size: 50),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Maulidio Farhan Rizkullah',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  'Experienced App Developer',
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Perumahan Kembang BB 05',
            ),
            Text(
              '+62 852 8958 9391',
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.accessibility),
            Icon(Icons.timer),
            Icon(Icons.phone_android),
            Icon(Icons.phone_iphone),
          ],
        ),
      ],
    );

    return MaterialApp(
      title: 'Maulidio Farhan Rizkullah',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Maulidio Farhan Rizkullah | 2141720041'),
        ),
        body: ListView(
          children: [
            finalPart,
            // SizedBox(
            //   height: 50,
            // ),
            // row,
            // row2,
            // column,
            // row3,
            // row4,
            // row5,
            // row6,
            // text,
            // icon,
            // image,
          ],
        ),
      ),
    );
  }
}
