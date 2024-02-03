import 'package:flutter/material.dart';
import 'package:randomclick/presentation/pages/home_screen.dart';
import 'package:randomclick/presentation/pages/splash_screen.dart';

Route<dynamic> genarateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/":
      return MaterialPageRoute(
        builder: (context) => const SplashScreen(),
      );
    case "/home":
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );

    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Error: Unknown Route'),
          ),
        ),
      );
  }
}
