import 'package:flutter/material.dart';
import 'package:netflix_app_redesign/features/trending_movies/services/trending.dart';
import 'package:netflix_app_redesign/view/main_page/main_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Trending()),
      ],
      child: MaterialApp(
        home: MainPage(),
      ),
    );
  }
}
