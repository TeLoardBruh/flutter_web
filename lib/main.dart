import 'package:flutter/material.dart';
import 'package:playground/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PlayGround',
      theme: ThemeData(
          primaryColor: Colors.blueGrey[200],
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: 'Open Sans',
              )),
      home: HomePage(),
    );
  }
}
