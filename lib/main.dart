import 'package:flutter/material.dart';
import 'package:task_week2_omar_mentorship/core/routing/app_router.dart';
import 'package:task_week2_omar_mentorship/core/routing/app_routes.dart';
import 'package:task_week2_omar_mentorship/core/utils/app_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: AppConstants.appName,

      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: AppRoutes.homeRoute,
    );
  }
}
