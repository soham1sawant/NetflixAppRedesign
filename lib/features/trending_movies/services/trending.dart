import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:netflix_app_redesign/features/trending_movies/models/trending_model.dart';


class Trending extends ChangeNotifier {
  late List<Result> trending;

  Future<List<Result>> fetchTrendingData() async {
    final String _appkey = 'fb42fcca4f0ee0e244db140af58e42f4';

    try {
      final response = await get(
          Uri.parse("https://api.themoviedb.org/3/trending/all/day?$_appkey"));

      if (response.statusCode == 200) {
        var rawData = jsonDecode(response.body);
        trending = TrendingModel.fromJson(rawData).results;
      } 
    } catch (e) {
      print(e);

      return <Result>[];
    }

    return trending;
  }
}
