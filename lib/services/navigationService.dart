import 'package:flutter/material.dart';


class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();


  Future<dynamic> navigatorTo(String routeName){
    return navigatorKey.currentState.pushNamed(routeName);

  }

  void goBack(){
    return navigatorKey.currentState.pop();
  }
}