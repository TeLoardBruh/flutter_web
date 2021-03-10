import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:playground/routing/route_name.dart';
import 'package:playground/views/home/home.dart';
import 'package:playground/views/pages/aboutPage.dart';
import 'package:playground/views/pages/contactPage.dart';


Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomePage(), settings.name);
    case AboutRoute:
      return _getPageRoute(AboutPage(), settings.name);
    case ContactRoute:
      return _getPageRoute(ContactPage(), settings.name);
    default:
  }
}

PageRoute _getPageRoute(Widget child, String name){
  return _FadeRoute(child: child, routeName: name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                child,
            settings: RouteSettings(name: routeName),
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}

