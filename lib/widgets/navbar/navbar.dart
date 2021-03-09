import 'package:flutter/material.dart';

import 'narbarLogo.dart';
import 'navbarItem.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    // print(s);
    if (s <= Size(500.0, 711.0) && s >= Size(375.0, 711.0)) {
      return _NavBarMoblie();
    } else if (s <= Size(320.0, 711.0)) {
      return _NavBarMoblieSm();
    } else {
      return _NavBarDesktopTab();
    }
  }
}

class _NavBarDesktopTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem('Contact'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('About')
            ],
          )
        ],
      ),
    );
  }
}

class _NavBarMoblie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          NavBarLogo()
        ],
      ),
    );
  }
}

class _NavBarMoblieSm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          // NavBarLogo()
        ],
      ),
    );
  }
}
