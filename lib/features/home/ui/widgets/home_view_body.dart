import 'package:flutter/material.dart';
import 'package:task_week2_omar_mentorship/core/utils/app_images.dart';
import 'package:task_week2_omar_mentorship/features/home/ui/widgets/home_header.dart';
import 'package:task_week2_omar_mentorship/features/home/ui/widgets/home_top_characters.dart';
import 'package:task_week2_omar_mentorship/features/home/ui/widgets/posters_widget.dart';
import 'package:task_week2_omar_mentorship/features/home/ui/widgets/tab_bar_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFDDE2FF), Color(0xFFFFFFFF)],
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 0,
            right: -14,
            child: Image.asset(AppImages.homeStar),
          ),
          SafeArea(
            bottom: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 23),
                const HomeHeader(),
                const SizedBox(height: 23),
                HomeTaps(),
                const SizedBox(height: 24),
                HomePosters(),
                const SizedBox(height: 20),

                HomeTopCharacters(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
