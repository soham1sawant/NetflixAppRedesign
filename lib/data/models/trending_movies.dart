class TrendingMovies {
  int page;
  List<Results> results;
  int totalPages;
  int totalResults;

  TrendingMovies({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory TrendingMovies.fromMap(Map<String, dynamic> json) {
    return TrendingMovies(
      page: json['page'],
      results:
          List<Results>.from(json['results'].map((x) => Results.fromMap(x))),
      totalPages: json['total_pages'],
      totalResults: json['total_results'],
    );
  }

  Map<String, dynamic> toMap() => {
        "page": page,
        "results": List<dynamic>.from(results.map((x) => x.toMap())),
        "total_pages": totalPages,
        "total_results": totalResults,
      };
}

class Results {
  String posterPath;
  bool adult;
  String overview;
  String releaseDate;
  List<int> genreIds;
  int id;
  String originalTitle;
  String originalLanguage;
  String title;
  String backdropPath;
  num popularity;
  int voteCount;
  bool video;
  num voteAverage;

  Results({
    required this.posterPath,
    required this.adult,
    required this.overview,
    required this.releaseDate,
    required this.genreIds,
    required this.id,
    required this.originalTitle,
    required this.originalLanguage,
    required this.title,
    required this.backdropPath,
    required this.popularity,
    required this.voteCount,
    required this.video,
    required this.voteAverage,
  });

  factory Results.fromMap(Map<String, dynamic> resultsJson) {
    return Results(
      posterPath: resultsJson['poster_path'] == null
          ? null
          : resultsJson['poster_path'],
      adult: resultsJson['adult'],
      overview: resultsJson['overview'],
      releaseDate: resultsJson['release_date'],
      genreIds: List<int>.from(resultsJson["genre_ids"].map((x) => x)),
      id: resultsJson['id'],
      originalTitle: resultsJson['original_title'],
      originalLanguage: resultsJson['original_language'],
      title: resultsJson['title'],
      backdropPath: resultsJson['backdrop_path'] == null
          ? null
          : resultsJson['backdrop_path'],
      popularity: resultsJson['popularity'],
      voteCount: resultsJson['vote_count'],
      video: resultsJson['video'],
      voteAverage: resultsJson['vote_average'],
    );
  }

  Map<String, dynamic> toMap() => {
        "poster_path": posterPath,
        "adult": adult,
        "overview": overview,
        "release_date": releaseDate,
        "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
        "id": id,
        "original_title": originalTitle,
        "original_language": originalLanguage,
        "title": title,
        "backdrop_path": backdropPath,
        "popularity": popularity,
        "vote_count": voteCount,
        "video": video,
        "vote_average": voteAverage,
      };
}
