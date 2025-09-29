import 'package:flutter/material.dart';
import 'package:task_week2_omar_mentorship/core/routing/app_routes.dart';
import 'package:task_week2_omar_mentorship/core/views/not_found_page.dart';
import 'package:task_week2_omar_mentorship/features/home/ui/screen/home_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeRoute:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundPage(),
          settings: settings,
        );
    }
  }
}
