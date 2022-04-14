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
                              vote: tv[index]['vote_average'].toString(),
                              air_date: tv[index]['first_air_date'],
                              original_language: tv[index]['original_language'],
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
                                    tv[index]['poster_path']
                                  )
                                )
                              ),
                            ),
                          Expanded(
                          child: Container(
                            child: CustomText(
                              color: Colors.white,
                                size: 15,
                                text: tv[index]['original_name'] == null ? 'no title' : tv[index]['original_name']))
                          )],
                      ),
                    ));
                  }))
        ],
      ),
    );
  }
}