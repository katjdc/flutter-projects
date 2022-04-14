import 'package:flutter/material.dart';
import 'package:movieapp/widget/customtext.dart';
import 'package:movieapp/description.dart';

class TrendingMovies extends StatelessWidget {
  final List trending;

  const TrendingMovies({Key? key, required this.trending}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CustomText(
              text: 'Trending Movies', 
              color: Colors.white, 
              size: 30.0
            ),
            SizedBox(height: 5.0),
            Container(
              height: 270.0,
              child: Container(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: trending.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Description(
                              name: trending[index]['title'],
                              bannerurl: 
                                  'https://image.tmdb.org/t/p/w500' +
                                    trending[index]['backdrop_path'],
                              posterurl: 
                                  'https://image.tmdb.org/t/p/w500' +
                                    trending[index]['poster_path'],
                              description: trending[index]['overview'],
                              vote: trending[index]['vote_average'].toString(),
                              launch_on: trending[index]['release_date'],
                              original_language: trending[index]['original_language'],
                            )));
                      },
                      child: Container(
                        width: 140.0,
                        child: Column(
                          children: [
                            Container(
                              height: 200.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://image.tmdb.org/t/p/w500' +
                                    trending[index]['poster_path']
                                  )
                                )
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: CustomText(
                                  text: trending[index]['title'] ?? 'No title',
                                  color: Colors.white,
                                  size: 15.0,
                                )
                              )
                            )
                          ]
                        )
                      )
                    );
                  }
                ),
              )
            )
          ]
        ),
      )
    );
  }
}