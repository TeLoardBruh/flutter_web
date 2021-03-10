import 'package:flutter/material.dart';
import 'package:playground/locator.dart';
import 'package:playground/views/home/home.dart';
import 'package:playground/views/layouts/layout.dart';
import 'package:playground/views/pages/aboutPage.dart';
import 'package:playground/views/pages/contactPage.dart';

void main() {
  setUpLocator();
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
      home: LayOut(),
    );
  }
}
