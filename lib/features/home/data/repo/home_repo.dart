import 'package:task_week2_omar_mentorship/features/home/data/data_source/remote_home_data_source.dart';
import 'package:task_week2_omar_mentorship/features/home/domain/entities/character.dart';
import 'package:task_week2_omar_mentorship/features/home/domain/entities/poster.dart';

class HomeRepo {
  final RemoteHomeDataSource remoteData;

  HomeRepo(this.remoteData);

  List<Poster> getPosters() => remoteData.getPosters();
  List<Character> getCharacters() => remoteData.getCharacters();
}
