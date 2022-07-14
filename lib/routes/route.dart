import 'package:bloc_demo/view/slash/splashscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splash = "/";
  static const String home = "/home";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splash:
        return MaterialPageRoute(
            builder: (_) => const SplashScreen(), settings: routeSettings);
      case Routes.home:

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(""),
        ),
        body: const Center(
          child: Text(""),
        ),
      ),
    );
  }
}
