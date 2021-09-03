import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app_redesign/data/repository/data_repository.dart';
import 'package:netflix_app_redesign/logic/bloc/trending_movies/trendingmovies_bloc.dart';
import 'package:netflix_app_redesign/presentation/home_page.dart';
import 'logic/simple_bloc_observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();

  final DataRepository dataRepository = DataRepository();

  runApp(MyApp(dataRepository: dataRepository));
}

class MyApp extends StatelessWidget {
  final DataRepository dataRepository;

  const MyApp({Key? key, required this.dataRepository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) =>
            TrendingmoviesBloc(dataRepository)..add(TrendingMoviesRequested()),
        child: HomePage(),
      ),
    );
  }
}
