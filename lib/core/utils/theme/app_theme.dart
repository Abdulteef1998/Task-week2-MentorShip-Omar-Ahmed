import 'package:flutter/material.dart';
import 'package:task_week2_omar_mentorship/core/utils/theme/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
    scaffoldBackgroundColor: AppColors.background,
  );
}
