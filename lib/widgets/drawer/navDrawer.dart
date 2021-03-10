import 'package:flutter/material.dart';
import 'package:playground/routing/route_name.dart';
import 'package:playground/widgets/drawer/drawerItem.dart';
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
          DrawerItem('Episodes', Icons.videocam, ContactRoute),
          DrawerItem('About', Icons.help, AboutRoute),
        ],
      ),
    );
    // return Drawer(
    //     // Add a ListView to the drawer. This ensures the user can scroll
    //     // through the options in the drawer if there isn't enough vertical
    //     // space to fit everything.
    //     child: ListView(
    //       // Important: Remove any padding from the ListView.
    //       padding: EdgeInsets.zero,
    //       children: <Widget>[
    //         DrawerHeader(
    //           child: Text('Drawer Header'),
    //           decoration: BoxDecoration(
    //             color: Colors.blue,
    //           ),
    //         ),
    //         ListTile(
    //           title: Text('Item 1'),
    //           onTap: () {
    //             // Update the state of the app
    //             // ...
    //             // Then close the drawer
    //             Navigator.pop(context);
    //           },
    //         ),
    //         ListTile(
    //           title: Text('Item 2'),
    //           onTap: () {
    //             // Update the state of the app
    //             // ...
    //             // Then close the drawer
    //             Navigator.pop(context);
    //           },
    //         ),
    //       ],
    //     ),);
  }
}
