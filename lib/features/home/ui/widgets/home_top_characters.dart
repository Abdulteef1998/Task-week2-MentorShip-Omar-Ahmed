import 'package:flutter/material.dart';
import 'package:task_week2_omar_mentorship/features/home/domain/entities/character.dart';

class HomeTopCharacters extends StatelessWidget {
  HomeTopCharacters({super.key});

  final List<Character> characters = [
    Character(
      image: "assets/images/character1.png",
      name: "Naruto",
      series: "Naruto",
    ),
    Character(
      image: "assets/images/character2.png",
      name: "Gon",
      series: "Hunter x Hunter",
    ),
    Character(
      image: "assets/images/character3.png",
      name: "Luffy",
      series: "One Piece",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Top Characters',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          height: 160,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            itemBuilder: (context, index) {
              final character = characters[index];
              return Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(character.image),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    character.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    character.series,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0XFFACACAC),
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 12);
            },
            itemCount: characters.length,
          ),
        ),
      ],
    );
  }
}
