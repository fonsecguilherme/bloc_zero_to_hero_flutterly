import 'package:bloc_zero_to_hero/presentation/screens/home_screen.dart';
import 'package:bloc_zero_to_hero/presentation/screens/third_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(
            title: 'Home Screen',
            color: Colors.blue,
          ),
        );
      case '/second':
        return MaterialPageRoute(
          builder: (_) => const ThirdScreen(
            title: 'Second Screen',
            color: Colors.red,
          ),
        );
      case '/third':
        return MaterialPageRoute(
          builder: (_) => const ThirdScreen(
            title: 'Third Screen',
            color: Colors.green,
          ),
        );
      default:
        return null;
    }
  }
}
