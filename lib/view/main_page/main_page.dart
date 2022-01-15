import 'package:flutter/material.dart';
import 'package:netflix_app_redesign/features/trending_movies/services/trending.dart';
import 'package:netflix_app_redesign/view/main_page/widgets/trending_banner.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          onPressed: () {},
        ),
        title: Image(image: AssetImage("assets/netflix.png")),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        child: Column(
          children: [
            FutureBuilder(
              future: Provider.of<Trending>(context).fetchTrendingData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } 
                else {
                return TrendingBanner(trendingDataList: snapshot.data,);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
