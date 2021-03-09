import 'package:flutter/material.dart';

class DeviceType extends StatelessWidget {
  final Widget moblie;
  final Widget desktoptablet;
  final Widget tablet;
  DeviceType({Key key, this.moblie, this.desktoptablet,this.tablet}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    // print(s);
    if (s <= Size(500.0, 711.0) ) {
      print("m");
      return moblie;
    // } else if (s <= Size(320.0, 711.0)) {
    //   return _NavBarMoblieSm();
    }
    else if(s <= Size(768.0, 711.0)) {
       print("d");
      return tablet;
    }
    else{
      return desktoptablet;
    }
  }
}
