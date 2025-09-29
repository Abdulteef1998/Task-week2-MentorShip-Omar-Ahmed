import 'package:flutter/material.dart';
import 'package:task_week2_omar_mentorship/features/home/data/data_source/remote_home_data_source.dart';
import 'package:task_week2_omar_mentorship/features/home/data/repo/home_repo.dart';
import 'package:task_week2_omar_mentorship/features/home/ui/detail/presentation/views/detail_view.dart';

// ===== Poster Entity =====

// ===== Remote Data Source =====

// ===== HomePosters Widget =====

class HomePosters extends StatelessWidget {
  HomePosters({super.key});

  final HomeRepo repo = HomeRepo(RemoteHomeDataSource());

  @override
  Widget build(BuildContext context) {
    final posters = repo.getPosters();

    return SizedBox(
      height: 295,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        itemCount: posters.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final poster = posters[index];
          return GestureDetector(
            onTap: () {
              // ✅ Navigator.push مباشرة
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const DetailView()),
              );
            },
            child: Column(
              children: [
                Container(
                  height: 245,
                  width: 184,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(poster.posterPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  poster.title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  poster.type,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFFA9A9A9),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
