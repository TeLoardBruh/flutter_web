import 'package:flutter/material.dart';
import 'package:playground/views/home.dart';
import 'package:playground/views/pages/aboutPage.dart';
import 'package:playground/views/pages/contactPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PlayGround',
      initialRoute: '/',
      routes: {
        // "/": ( context) => HomePage(),
        "/aboutPage": (BuildContext context) => AboutPage(),
        "/contactPage": (BuildContext context) => ContactPage(),
        "/home": (BuildContext context) => HomePage(),
      },
      theme: ThemeData(
          primaryColor: Colors.blueGrey[200],
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: 'Open Sans',
              )),
      home: HomePage(),
    );
  }
}
