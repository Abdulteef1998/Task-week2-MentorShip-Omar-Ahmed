import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:task_week2_omar_mentorship/core/utils/theme/app_colors.dart';
import 'package:task_week2_omar_mentorship/features/Ratinge/ui/ratinge_screen.dart';
import 'package:task_week2_omar_mentorship/features/discover/ui/discover_screen.dart';
import 'package:task_week2_omar_mentorship/features/home/ui/screen/home_screen.dart';
import 'package:task_week2_omar_mentorship/features/search/ui/search_screen.dart';
import 'package:task_week2_omar_mentorship/features/setting/ui/settings_screen.dart';

class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({super.key});

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      tabs: [
        // ✅ التاب الأول يعرض الـ HomeViewBody بدل HomeScreen
        PersistentTabConfig(
          screen: const HomeScreen(),
          item: ItemConfig(
            activeColorSecondary: AppColors.primaryColor,
            activeForegroundColor: AppColors.backgroundColor,
            icon: SvgPicture.asset(
              "assets/icons/home-2.svg",
              width: 24,
              height: 24,
            ),
            title: "Home",
          ),
        ),
        PersistentTabConfig(
          screen: const RatingeScreen(),
          item: ItemConfig(
            activeColorSecondary: AppColors.primaryColor,
            activeForegroundColor: AppColors.backgroundColor,
            icon: SvgPicture.asset(
              "assets/icons/rating.svg",
              width: 24,
              height: 24,
            ),
            title: 'Rating',
          ),
        ),
        PersistentTabConfig(
          screen: const SearchScreen(),
          item: ItemConfig(
            activeColorSecondary: AppColors.primaryColor,
            activeForegroundColor: AppColors.backgroundColor,
            icon: SvgPicture.asset(
              "assets/icons/search-normal.svg",
              width: 24,
              height: 24,
            ),
            title: "Search",
          ),
        ),
        PersistentTabConfig(
          screen: const DiscoverScreen(),
          item: ItemConfig(
            activeColorSecondary: AppColors.primaryColor,
            activeForegroundColor: AppColors.backgroundColor,
            icon: SvgPicture.asset(
              "assets/icons/discover.svg",
              width: 24,
              height: 24,
            ),
            title: "Discover",
          ),
        ),
        PersistentTabConfig(
          screen: const SettingsScreen(),
          item: ItemConfig(
            activeColorSecondary: AppColors.primaryColor,
            activeForegroundColor: AppColors.backgroundColor,
            icon: SvgPicture.asset(
              "assets/icons/setting.svg",
              width: 24,
              height: 24,
            ),
            title: "Settings",
          ),
        ),
      ],
      navBarBuilder: (navBarConfig) =>
          Style2BottomNavBar(navBarConfig: navBarConfig),
    );
  }
}
