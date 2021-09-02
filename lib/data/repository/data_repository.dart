import 'package:netflix_app_redesign/data/data_provider/trending_movies_provider.dart';
import 'package:netflix_app_redesign/data/models/trending_movies.dart';

class DataRepository {
  final _trendingMoviesProvider = TrendingMoviesProvider();

  Future getTrendingMovies() async {
    final decodedJson = await _trendingMoviesProvider.getData();
    var trendingMovies = TrendingMovies.fromMap(decodedJson);

    return trendingMovies;
  }
}
