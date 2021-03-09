import 'package:flutter/material.dart';

import '../container/deviceType.dart';
import 'narbarLogo.dart';
import 'navbarItem.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DeviceType(
      tablet: _NavBarDesktopTab(),
      desktoptablet: _NavBarDesktopTab(),
      moblie: _NavBarMoblie(),
    );
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
          // IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {},
          // ),
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
