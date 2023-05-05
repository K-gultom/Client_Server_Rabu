import 'package:flutter/material.dart';
import 'package:navigator_route_generator/firstscreen.dart';
import 'package:navigator_route_generator/secondscreen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    final args = settings.arguments;
    
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => FirstScreen());

      case '/second':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => SecondScreen(data: args));
        }
        return _errorRoute();

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Error Page'),
        ),
      );
    });
  }
}
