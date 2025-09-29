import 'package:flutter/material.dart';
import 'package:task_week2_omar_mentorship/core/utils/theme/app_colors.dart';

class HomeTaps extends StatelessWidget {
  HomeTaps({super.key});

  // ✅ نستخدم ValueNotifier بدل Riverpod
  final ValueNotifier<int> currentIndex = ValueNotifier<int>(0);

  static const taps = [
    'All',
    'Popular',
    'Trending',
    'New Releases',
    'Top Rated',
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: currentIndex,
      builder: (context, index, _) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          child: Row(
            children: taps
                .asMap()
                .entries
                .map(
                  (e) => GestureDetector(
                    onTap: () {
                      currentIndex.value = e.key; // ✅ تحديث الـ index
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        right: e.key == taps.length - 1 ? 0 : 4,
                      ),
                      decoration: BoxDecoration(
                        color: index == e.key
                            ? AppColors.primaryColor
                            // اللون الأساسي لما يكون مختار
                            : Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      child: Text(
                        e.value,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: index == e.key ? Colors.white : Colors.blue,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
