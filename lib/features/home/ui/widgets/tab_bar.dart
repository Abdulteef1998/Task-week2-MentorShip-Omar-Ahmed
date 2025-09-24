import 'package:flutter/material.dart';

class CustomTabBarWidget extends StatelessWidget {
  final TabController tabController;
  final List<String> tabs = ['All', 'Popular', 'Trending', 'New Releases'];

  CustomTabBarWidget({Key? key, required this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: tabs.asMap().entries.map((entry) {
        int index = entry.key;
        String tabTitle = entry.value;

        return GestureDetector(
          onTap: () => tabController.animateTo(index),
          child: AnimatedBuilder(
            animation: tabController,
            builder: (context, child) {
              bool isSelected = tabController.index == index;

              return Container(
                width: 85, // العرض المحدد
                height: 28, // الارتفاع المحدد
                padding: const EdgeInsets.symmetric(
                  vertical: 6, // padding-top & padding-bottom: 6px
                  horizontal: 12, // padding-left & padding-right: 12px
                ),
                decoration: BoxDecoration(
                  gradient: isSelected
                      ? const LinearGradient(
                          colors: [
                            Color(0xFF6366F1), // البنفسجي الأساسي
                            Color(0xFF8B5CF6), // بنفسجي فاتح
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        )
                      : null,
                  color: isSelected
                      ? null
                      : Colors.white.withOpacity(0.7), // خلفية بيضاء شفافة
                  borderRadius: BorderRadius.circular(100),
                  border: isSelected
                      ? null
                      : Border.all(
                          color: const Color(0xFF6366F1).withOpacity(0.2),
                          width: 1,
                        ),
                  boxShadow: isSelected
                      ? [
                          BoxShadow(
                            color: const Color(0xFF6366F1).withOpacity(0.3),
                            blurRadius: 12,
                            offset: const Offset(0, 4),
                            spreadRadius: 0,
                          ),
                        ]
                      : [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                ),
                child: Center(
                  child: Text(
                    tabTitle,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: isSelected
                          ? FontWeight.w600
                          : FontWeight.w500,
                      color: isSelected
                          ? Colors.white
                          : const Color(0xFF6B7280),
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              );
            },
          ),
        );
      }).toList(),
    );
  }
}
