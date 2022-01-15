import 'package:flutter/material.dart';

class TrendingBanner extends StatelessWidget {
  final trendingDataList;

  const TrendingBanner({Key? key, required this.trendingDataList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: trendingDataList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Center(
              child: Container(
                width: 380.0,
                height: 190.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: FittedBox(
                    child: Image(image: AssetImage("assets/theNutcracker.jpg")),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                width: 380.0,
                height: 190.0,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "THE NUTCRACKER AND THE FOUR REALMS",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
