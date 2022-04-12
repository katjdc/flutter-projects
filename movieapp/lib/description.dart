import 'package:flutter/material.dart';
import 'package:movieapp/widget/customtext.dart';

class Description extends StatelessWidget {
  final String name, description, bannerurl, posterurl, vote, launch_on;

  const Description(
      {Key? key, 
      required this.name,
      required this.description,
      required this.bannerurl,
      required this.posterurl,
      required this.vote,
      required this.launch_on})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: ListView(children: [
          Container(
              height: 250,
              child: Stack(children: [
                Positioned(
                  child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      bannerurl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    child: CustomText(text: '⭐ Average Rating - ' + vote, size: 24, color: Colors.white)),
              ])),
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.all(10),
              child: CustomText(
                  text: name, size: 24, color: Colors.white)),
          Container(
              padding: EdgeInsets.only(left: 10),
              child:
                  CustomText(text: 'Releasing On - ' + launch_on, size: 14, color: Colors.white)),
          Row(
            children: [
              Container(
                height: 200,
                width: 100,
                child: Image.network(posterurl),
              ),
              Flexible(
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: CustomText(text: description, size: 15, color: Colors.white)),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
