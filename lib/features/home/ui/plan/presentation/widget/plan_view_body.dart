import 'package:flutter/material.dart';
import 'package:task_week2_omar_mentorship/core/utils/app_images.dart';
import 'package:task_week2_omar_mentorship/features/home/ui/plan/presentation/widget/plan_card_section.dart';
import 'package:task_week2_omar_mentorship/features/home/ui/plan/presentation/widget/plan_continue_button.dart';
import 'package:task_week2_omar_mentorship/features/home/ui/plan/presentation/widget/plan_header.dart';
import 'package:task_week2_omar_mentorship/features/home/ui/plan/presentation/widget/plan_rocket_image.dart';
import 'package:task_week2_omar_mentorship/features/home/ui/plan/presentation/widget/plan_seamless_anime.dart';

class PlanViewBody extends StatelessWidget {
  const PlanViewBody({super.key});

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
            top: 175,
            right: -14,
            child: Image.asset(AppImages.planRightStar),
          ),
          Positioned(
            top: 0,
            left: -14,
            child: Image.asset(AppImages.planLeftStar),
          ),
          const SafeArea(
            bottom: false,
            child: Column(
              children: [
                const SizedBox(height: 20),
                PlanHeader(),
                const SizedBox(height: 9),
                PlanRocketImage(),
                const SizedBox(height: 4),
                PlanSeamlessAnime(),
                const SizedBox(height: 30),
                PlanCardSection(),
                const SizedBox(height: 39),
                PlanContinueButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
