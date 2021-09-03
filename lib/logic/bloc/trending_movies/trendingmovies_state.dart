part of 'trendingmovies_bloc.dart';

@immutable
abstract class TrendingmoviesState extends Equatable {}

class TrendingmoviesLoadProgress extends TrendingmoviesState {
  @override
  List<Object?> get props => [];
}

class TrendingmoviesLoadSuccess extends TrendingmoviesState {
  final trendingMovies;

  TrendingmoviesLoadSuccess(this.trendingMovies);

  @override
  List<Object?> get props => [];
}

class TrendingmoviesLoadFailure extends TrendingmoviesState {
  @override
  List<Object?> get props => [];
}
