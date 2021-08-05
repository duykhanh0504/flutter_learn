import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ui_2/router/router.dart';

const String LoggedInKey = 'LoggedIn';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool _initialized = false;

  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context);
    final size = query.size;
    final itemWidth = size.width;
    final itemHeight = itemWidth * (size.width / size.height);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Image.asset('assets/image/splash.png',
                width: itemWidth, height: itemHeight),
          ),
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_initialized) {
      _initialized = true;
      Timer(const Duration(milliseconds: 2000), () {
        Navigator.pushNamedAndRemoveUntil(
            context, NavigationRouter.login, (route) => false);
      });
    }
  }
}
