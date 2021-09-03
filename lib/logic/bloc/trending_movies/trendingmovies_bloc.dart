import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:netflix_app_redesign/data/repository/data_repository.dart';

part 'trendingmovies_event.dart';
part 'trendingmovies_state.dart';

class TrendingmoviesBloc
    extends Bloc<TrendingmoviesEvent, TrendingmoviesState> {
  final DataRepository _dataRepository;

  TrendingmoviesBloc(this._dataRepository)
      : super(TrendingmoviesLoadProgress());

  @override
  Stream<TrendingmoviesState> mapEventToState(
      TrendingmoviesEvent event) async* {
    if (event is TrendingMoviesRequested) {
      try {
        final data = await _dataRepository.getTrendingMovies();
        yield TrendingmoviesLoadSuccess(data);
      } catch (_) {
        yield TrendingmoviesLoadFailure();
      }
    }
  }
}
