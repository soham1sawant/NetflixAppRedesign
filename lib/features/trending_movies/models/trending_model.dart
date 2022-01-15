class TrendingModel {
  final int page;
  final List<Result> results;
  final int totalPages;
  final int totalResults;

  TrendingModel(
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  );

  factory TrendingModel.fromJson(Map<String, dynamic> json) {
    var list = json['results'] as List;

    return TrendingModel(
      json['page'],
      list.map((i) => Result.fromJson(i)).toList(),
      json['total_pages'],
      json['total_results'],
    );
  }
}

class Result {
  final String backdropPath;
  final List<int> genreIds;
  final String originalName;
  final List originCountry;
  final String posterPath;
  final int voteCount;
  final double voteAverage;
  final String firstAirDate;
  final String overview;
  final int id;
  final String name;
  final String originalLanguage;
  final double popularity;
  final String mediaType;

  Result(
    this.backdropPath,
    this.genreIds,
    this.originalName,
    this.originCountry,
    this.posterPath,
    this.voteCount,
    this.voteAverage,
    this.firstAirDate,
    this.overview,
    this.id,
    this.name,
    this.originalLanguage,
    this.popularity,
    this.mediaType,
  );

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      json['backdrop_path'],
      List<int>.from(json['genre_ids']),
      json["original_name"],
      List.from(json['origin_country']),
      json["poster_path"],
      json["vote_count"],
      json["vote_average"],
      json["first_air_date"],
      json["overview"],
      json["id"],
      json["name"],
      json["original_language"],
      json["popularity"],
      json["media_type"],
    );
  }
}
