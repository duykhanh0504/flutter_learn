import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui_2/router/router.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: NavigationRouter.splash,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: NavigationRouter.generateRoute,
      navigatorObservers: [NavigationRouter().routeObserver],
      navigatorKey: NavigationRouter.navigatorKey,
    );
  }
}
