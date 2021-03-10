import 'package:flutter/material.dart';
import 'package:playground/routing/route_name.dart';
import 'package:playground/services/navigationService.dart';

import '../../locator.dart';

class NavBarLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        locator<NavigationService>().navigatorTo(HomeRoute);
      },
      child: SizedBox(
        height: 80,
        width: 100,
        child: Image.asset('assets/img/logo.png'),
      ),
    );
  }
}
