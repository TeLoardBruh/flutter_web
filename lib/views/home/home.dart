import 'package:flutter/material.dart';
import 'package:playground/locator.dart';
import 'package:playground/routing/route.dart';
import 'package:playground/routing/route_name.dart';
import 'package:playground/services/navigationService.dart';
import 'package:playground/views/home/homeDeskTop.dart';
import 'package:playground/views/home/homeMoblie.dart';
import 'package:playground/views/home/homeTablet.dart';
import 'package:playground/widgets/buttonCalltoAction/buttonCalltoAction.dart';
import 'package:playground/widgets/container/container.dart';
import 'package:playground/widgets/container/deviceType.dart';
import 'package:playground/widgets/drawer/navDrawer.dart';
import 'package:playground/widgets/navbar/navbar.dart';
import 'package:playground/widgets/welcomeText/welcomeText.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DeviceType(
      desktoptablet: HomeDeskTop(),
      tablet: HomeTablet(),
      moblie: HomeMoblie(),
      // moblie: _Moblie(),
    );
  }
}

class _Tablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: ContainerView(
        child: Column(
          children: [
            NavBar(),
            SizedBox(
              height: 100,
              
            ),
            Expanded(
                child: Column(
              children: [
                WelcomeText(),
                
                Expanded(
                    child: Center(
                  child: ButtonCalltoAction('Start !'),
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
class _Moblie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    endDrawerEnableOpenDragGesture: false,
      drawer: NavDrawer(),
      backgroundColor: Colors.white,
      body: ContainerView(
        child: Column(
          children: [
            NavBar(),
            SizedBox(
              height: 100,
              
            ),
            Expanded(
              child: Column(
              children: [
                WelcomeText(),
                Expanded(
                    child: Center(
                  child: ButtonCalltoAction('Start !'),
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}


class _DesktopTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ContainerView(
        child: Column(
          children: [
            NavBar(),
            
            Expanded(
                child: Row(
              children: [
                WelcomeText(),
                Expanded(
                    child: Center(
                  child: ButtonCalltoAction('Start !'),
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}