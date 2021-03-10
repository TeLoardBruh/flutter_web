import 'package:flutter/material.dart';

class DeviceType extends StatelessWidget {
  final Widget moblie;
  final Widget desktoptablet;
  final Widget tablet;
  DeviceType({Key key, this.moblie, this.desktoptablet, this.tablet})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    print(s);
    if (s >= Size(659.0, MediaQuery.of(context).size.height) &&
        s <= Size(890.0, MediaQuery.of(context).size.height)) {
      print("t");
      return tablet;
      // } else if (s <= Size(320.0, MediaQuery.of(context).size.height)) {
      //   return _NavBarMoblieSm();
      // s <= Size(500.0, 711.0) && s >= Size(375.0, 711.0)
    } else if (s <= Size(659.0, MediaQuery.of(context).size.height)) {
      print("m");
      return moblie;
    } else {
      print("d");
      return desktoptablet;
    }
  }
}
