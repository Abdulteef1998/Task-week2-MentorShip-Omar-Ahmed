import 'package:flutter/material.dart';
import 'package:task_week2_omar_mentorship/core/utils/theme/app_colors.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Where Anime Comes Alive',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.darkColor,
      ),
    );
  }
}
