import 'dart:convert';

import 'package:http/http.dart';

class TrendingMoviesProvider {
  final String _appkey = "fb42fcca4f0ee0e244db140af58e42f4";

  Future getData() async {
    final trendingMoviesJson = await get(Uri.parse(
        "https://api.themoviedb.org/3/trending/all/day?api_key=$_appkey"));
    var rawData = jsonDecode(trendingMoviesJson.body);

    return rawData;
  }
}
