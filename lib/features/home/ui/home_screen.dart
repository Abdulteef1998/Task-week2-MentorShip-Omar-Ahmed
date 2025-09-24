import 'package:flutter/material.dart';
import 'package:task_week2_omar_mentorship/features/home/ui/pages/anime_daetls_page.dart';
import 'package:task_week2_omar_mentorship/features/home/ui/widgets/anmie_card.dart';
import 'package:task_week2_omar_mentorship/features/home/ui/widgets/home_page_header.dart';
import 'package:task_week2_omar_mentorship/features/home/ui/widgets/tab_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE8E4FF),
              Color(0xFFF0F0FF),
              Color(0xFFF8F8FF),
              Color(0xFFFFFFFF),
            ],
            stops: [0.0, 0.3, 0.7, 1.0],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                const SizedBox(height: 67),

                // Header
                const HomePageHeader(),

                const SizedBox(height: 24),

                // Custom TabBar
                CustomTabBarWidget(tabController: _tabController),

                const SizedBox(height: 24),

                // TabBarView مع الكاردات
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      EmptyTabContent(title: 'All Anime'),
                      EmptyTabContent(title: 'Popular Anime'),
                      EmptyTabContent(title: 'Trending Anime'),
                      EmptyTabContent(title: 'New Releases'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EmptyTabContent extends StatelessWidget {
  final String title;

  const EmptyTabContent({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 287,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: _getCardsForTab(context).length,
              separatorBuilder: (context, index) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                return _getCardsForTab(context)[index];
              },
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _getCardsForTab(BuildContext context) {
    switch (title) {
      case 'All Anime':
        return [
          AnimeCard(
            image: 'assets/images/konan.png',
            title: 'Detective Conan',
            genre: 'Mystery',
            rating: 5.0,
            description: 'A brilliant young detective solves crimes.',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => AnimeDetailPage(
                    image: 'assets/images/konan.png',
                    title: 'Detective Conan',
                    genre: 'Mystery',
                    rating: 5.0,
                    description: 'A brilliant young detective solves crimes.',
                  ),
                ),
              );
            },
          ),
          AnimeCard(
            image: 'assets/images/hnter.png',
            title: 'Hunter x Hunter',
            genre: 'Adventure',
            rating: 5.0,
            description: 'Gon Freecss becomes a Hunter to find his father.',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => AnimeDetailPage(
                    image: 'assets/images/hnter.png',
                    title: 'Hunter x Hunter',
                    genre: 'Adventure',
                    rating: 5.0,
                    description:
                        'Gon Freecss becomes a Hunter to find his father.',
                  ),
                ),
              );
            },
          ),
        ];
      default:
        return [];
    }
  }
}
