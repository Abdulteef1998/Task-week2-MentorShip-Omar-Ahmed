import 'package:flutter/material.dart';
import 'package:task_week2_omar_mentorship/core/utils/app_images.dart';
import 'package:task_week2_omar_mentorship/core/utils/theme/app_colors.dart';
import 'package:task_week2_omar_mentorship/features/plan/presentation/view/plan_view.dart';

class DetailBottomSheet extends StatelessWidget {
  const DetailBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      elevation: 0,
      enableDrag: false,
      onClosing: () {},
      builder: (context) {
        return Container(
          color: const Color(0xff16103C),
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              _buildButton(context, AppImages.stopwatchIcon, 'Preview', false),
              const SizedBox(width: 16),
              _buildButton(context, AppImages.eyeIcon, 'Watch Now'),
            ],
          ),
        );
      },
    );
  }

  _buildButton(
    BuildContext context,
    String iconPath,
    String text, [
    bool isPrimary = true,
  ]) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          // 🚀 Transition Slide from Bottom بدون AppTransitions
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const PlanView(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                    final tween = Tween(
                      begin: const Offset(0, 1),
                      end: Offset.zero,
                    );
                    final curvedAnimation = CurvedAnimation(
                      parent: animation,
                      curve: Curves.easeInOut,
                    );
                    return SlideTransition(
                      position: tween.animate(curvedAnimation),
                      child: child,
                    );
                  },
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(37),
            color: isPrimary
                ? AppColors.primaryColor
                : const Color(0xff899866).withOpacity(0.4),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(iconPath),
              const SizedBox(width: 7),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
