import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_2/ui/login.dart';
import 'package:flutter_ui_2/ui/splash.dart';

class NavigationRouter {
  static const String splash = '/';
  static const String login = '/LOGIN';
  static final navigatorKey = GlobalKey<NavigatorState>();
  final RouteObserver<ModalRoute<void>> routeObserver = RouteObserver<ModalRoute<void>>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => route(settings), settings: RouteSettings(name: settings.name));
  }

  static route(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return Splash();
      case login:
        return Login();
      default:
        return Scaffold(
          body: Center(
            child: Text('${'no_route_found'} ${settings.name}'),
          ),
        );
    }
  }
}
