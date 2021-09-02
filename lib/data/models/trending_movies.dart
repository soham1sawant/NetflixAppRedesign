// To parse this JSON data, do
//
//     final trendingMovies = trendingMoviesFromMap(jsonString);

import 'dart:convert';

TrendingMovies trendingMoviesFromMap(String str) => TrendingMovies.fromMap(json.decode(str));

String trendingMoviesToMap(TrendingMovies data) => json.encode(data.toMap());

class TrendingMovies {
    TrendingMovies({
        required this.page,
        required this.results,
        required this.totalPages,
        required this.totalResults,
    });

    final int page;
    final List<Result> results;
    final int totalPages;
    final int totalResults;

    factory TrendingMovies.fromMap(Map<String, dynamic> json) => TrendingMovies(
        page: json["page"],
        results: List<Result>.from(json["results"].map((x) => Result.fromMap(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
    );

    Map<String, dynamic> toMap() => {
        "page": page,
        "results": List<dynamic>.from(results.map((x) => x.toMap())),
        "total_pages": totalPages,
        "total_results": totalResults,
    };
}

class Result {
    Result({
        required this.adult,
        required this.backdropPath,
        required this.genreIds,
        required this.id,
        required this.originalLanguage,
        required this.originalTitle,
        required this.overview,
        required this.posterPath,
        required this.releaseDate,
        required this.title,
        required this.video,
        required this.voteAverage,
        required this.voteCount,
        required this.popularity,
        required this.mediaType,
        required this.firstAirDate,
        required this.name,
        required this.originCountry,
        required this.originalName,
    });

    final bool adult;
    final String backdropPath;
    final List<int> genreIds;
    final int id;
    final OriginalLanguage originalLanguage;
    final String originalTitle;
    final String overview;
    final String posterPath;
    final DateTime releaseDate;
    final String title;
    final bool video;
    final double voteAverage;
    final int voteCount;
    final double popularity;
    final MediaType mediaType;
    final DateTime firstAirDate;
    final String name;
    final List<String> originCountry;
    final String originalName;

    factory Result.fromMap(Map<String, dynamic> json) => Result(
        adult: json["adult"],
        backdropPath: json["backdrop_path"],
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        id: json["id"],
        originalLanguage: json["original_language"],
        originalTitle: json["original_title"],
        overview: json["overview"],
        posterPath: json["poster_path"],
        releaseDate: DateTime.parse(json["release_date"]),
        title: json["title"],
        video: json["video"],
        voteAverage: json["vote_average"].toDouble(),
        voteCount: json["vote_count"],
        popularity: json["popularity"].toDouble(),
        mediaType: json["media_type"],
        firstAirDate: DateTime.parse(json["first_air_date"]),
        name: json["name"],
        originCountry: List<String>.from(json["origin_country"].map((x) => x)),
        originalName: json["original_name"],
    );

    Map<String, dynamic> toMap() => {
        "adult": adult,
        "backdrop_path": backdropPath,
        "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
        "id": id,
        "original_language": originalLanguageValues.reverse[originalLanguage],
        "original_title": originalTitle,
        "overview": overview,
        "poster_path": posterPath,
        "release_date": "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
        "title": title,
        "video": video,
        "vote_average": voteAverage,
        "vote_count": voteCount,
        "popularity": popularity,
        "media_type": mediaTypeValues.reverse[mediaType],
        "first_air_date": "${firstAirDate.year.toString().padLeft(4, '0')}-${firstAirDate.month.toString().padLeft(2, '0')}-${firstAirDate.day.toString().padLeft(2, '0')}",
        "name": name,
        "origin_country": List<dynamic>.from(originCountry.map((x) => x)),
        "original_name": originalName,
    };
}

enum MediaType { MOVIE, TV }

final mediaTypeValues = EnumValues({
    "movie": MediaType.MOVIE,
    "tv": MediaType.TV
});

enum OriginalLanguage { EN, ES }

final originalLanguageValues = EnumValues({
    "en": OriginalLanguage.EN,
    "es": OriginalLanguage.ES
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        return reverseMap;
    }
}
