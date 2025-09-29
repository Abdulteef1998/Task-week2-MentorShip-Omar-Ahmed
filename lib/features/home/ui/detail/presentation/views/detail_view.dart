import 'package:flutter/material.dart';
import 'package:task_week2_omar_mentorship/core/utils/app_images.dart';

import '../widgets/detail_bottom_sheet.dart';
import '../widgets/image_hero.dart';
import '../widgets/video_info_section.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Column(children: [ImageHero(), VideoInfoSection()]),
            Positioned(
              top: ImageHero.height - 88,
              child: Image.asset(AppImages.demonImage),
            ),
          ],
        ),
      ),
      bottomSheet: const DetailBottomSheet(),
    );
  }
}
