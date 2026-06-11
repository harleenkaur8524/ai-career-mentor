import 'package:ai_career_mentor/features/career_analysis/presentation/screens/career_analysis_screen.dart';
import 'package:flutter/material.dart';
import 'package:ai_career_mentor/features/career_analysis/presentation/screens/homescreen.dart';

class AppRouter {
  static const String home = '/';
  static const String analysis = '/analysis';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case analysis:
        return MaterialPageRoute(builder: (_) => const CareerAnalysisScreen());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Route Not Found'))),
        );
    }
  }
}
