import 'package:flutter/material.dart';
import 'package:playground/widgets/drawer/drawer.dart';
import 'package:playground/widgets/drawer/navDrawerHead.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          NavDrawerHead(),
          DrawerAnimation('Episodes', Icons.videocam),
          DrawerAnimation('About', Icons.help),
        ],
      ),
    );
  }
}
