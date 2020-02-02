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
                onTapDown: (details) => print('outer tap down'),
                onTapUp: (details) => print('outer tap down'),
                onTap: () => print('outer tap'),
                child: GestureDetector(
                  onTapDown: (details) => print('inner tap down'),
                  onTapUp: (details) => print('inner tap up'),
                  onTap: () => print('inner tap'),
                  child: Container(
                    decoration: BoxDecoration(),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTapDown: (details) => print('outer tap down'),
                onTapUp: (details) => print('outer tap down'),
                onTap: () => print('outer tap'),
                child: GestureDetector(
                  onTapDown: (details) => print('inner tap down'),
                  onTapUp: (details) => print('inner tap up'),
                  onTap: () => print('inner tap'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
