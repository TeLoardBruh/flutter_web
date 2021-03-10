import 'package:flutter/material.dart';
import 'package:playground/routing/route.dart';
import 'package:playground/routing/route_name.dart';
import 'package:playground/services/navigationService.dart';
import 'package:playground/widgets/buttonCalltoAction/buttonCalltoAction.dart';
import 'package:playground/widgets/container/container.dart';
import 'package:playground/widgets/navbar/navbar.dart';
import 'package:playground/widgets/welcomeText/welcomeText.dart';

import '../../locator.dart';

class HomeTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerView(
      child: Container(
        // color: Colors.yellow,
        child: Column(
          children: [
            WelcomeText(),
            Expanded(
                child: Center(
              child: ButtonCalltoAction('Start !'),
            ))
          ],
        ),
      ),
    );
  }
}
