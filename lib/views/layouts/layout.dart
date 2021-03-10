import 'package:flutter/material.dart';
import 'package:playground/routing/route.dart';
import 'package:playground/routing/route_name.dart';
import 'package:playground/services/navigationService.dart';
import 'package:playground/widgets/container/container.dart';
import 'package:playground/widgets/drawer/navDrawer.dart';
import 'package:playground/widgets/navbar/navbar.dart';

import '../../locator.dart';

class LayOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      drawer: NavDrawer(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          NavBar(),
          // SizedBox(
          //   height: 100,
          // ),
          Expanded(
              child: Navigator(
            key: locator<NavigationService>().navigatorKey,
            onGenerateRoute: generateRoute,
            initialRoute: HomeRoute,

            //   child: Column(
            // children: [
            //   WelcomeText(),
            //   Expanded(
            //       child: Center(
            //     child: ButtonCalltoAction('Start !'),
            //   ))
            // ],
          ))
        ],
      ),
    );
  }
}
