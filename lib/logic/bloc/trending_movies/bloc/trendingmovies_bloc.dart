import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'trendingmovies_event.dart';
part 'trendingmovies_state.dart';

class TrendingmoviesBloc extends Bloc<TrendingmoviesEvent, TrendingmoviesState> {
  TrendingmoviesBloc() : super(TrendingmoviesInitial());

  @override
  Stream<TrendingmoviesState> mapEventToState(
    TrendingmoviesEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
