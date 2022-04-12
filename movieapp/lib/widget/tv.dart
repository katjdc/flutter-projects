import 'package:flutter/material.dart';
import 'package:movieapp/widget/customtext.dart';
import 'package:movieapp/descriptiontv.dart';

class TV extends StatelessWidget {
  final List tv;

  const TV ({Key? key, required this.tv}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CustomText(
            text: 'Popular TV Shows',
            size: 30.0,
            color: Colors.white,
          ),
          SizedBox(height: 10),
          Container(
              height: 250.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tv.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => DescriptionTV(
                              name: tv[index]['name'],
                              bannerurl: 
                                  'https://image.tmdb.org/t/p/w500' +
                                    tv[index]['backdrop_path'],
                              posterurl: 
                                  'https://image.tmdb.org/t/p/w500' +
                                    tv[index]['poster_path'],
                              description: tv[index]['overview'],
                              vote: tv[index]['vote_average']
                                  .toString(),
                              launch_on: tv[index]['first_air_date'],
                            )));
                      },
                      child: Container(
                      padding: EdgeInsets.all(5),
                      width: 250.0,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://image.tmdb.org/t/p/w500' +
                                          tv[index]['backdrop_path']
                                          ),
                                  fit: BoxFit.cover),
                            ),
                            height: 140,
                          ),
                          SizedBox(height: 5.0),
                          Container(
                            child: CustomText(
                              color: Colors.white,
                                size: 15,
                                text: tv[index]['name'] ?? 'Loading')
                          )
                        ],
                      ),
                    ));
                  }))
        ],
      ),
    );
  }
}