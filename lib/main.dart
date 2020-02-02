import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTapDown: (tdd) => print('TD2'),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTapDown: (tdd) => print('TD2'),
                child: Container(),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTapDown: (tdd) => print('TD2'),
                child: Container(
                  decoration: BoxDecoration(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
