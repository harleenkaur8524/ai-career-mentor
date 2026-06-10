import 'package:flutter/material.dart';
import 'package:ai_career_mentor/features/career_analysis/presentation/screens/homescreen.dart';

class AppRouter {
  static const String home = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Route Not Found'))),
        );
    }
  }
}
