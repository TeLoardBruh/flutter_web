import 'package:flutter/material.dart';
import 'package:playground/widgets/container/deviceType.dart';
import 'package:playground/widgets/drawer/navDrawer.dart';

import 'narbarLogo.dart';
import 'navbarItem.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return DeviceType(
      moblie: _NavBarMoblie(),
      desktoptablet: _NavBarDesktopTab(),
      tablet: _NavBarDesktopTab(),
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
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          // NavDrawer(),
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
