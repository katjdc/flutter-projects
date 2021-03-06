import 'package:flutter/material.dart';
import 'package:movieapp/widget/customtext.dart';
import 'package:google_fonts/google_fonts.dart';

class Description extends StatelessWidget {
  final String name, description, bannerurl, posterurl, vote, launch_on, original_language;

  const Description(
      {Key? key, 
      required this.name,
      required this.description,
      required this.bannerurl,
      required this.posterurl,
      required this.vote,
      required this.launch_on,
      required this.original_language})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          name, style: const TextStyle(fontSize: 25, color: Colors.white),
       ),
      centerTitle: true,
      elevation: 0,
     ),
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
              ])),
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.all(10),
              child: CustomText(text: '⭐ Average Rating - ' + vote, size: 24, color: Colors.white)),
          Container(
              padding: EdgeInsets.all(10),
              child: CustomText(
                  text: name != null ? name: 'Null', size: 24, color: Colors.white)),
          Container(
              padding: EdgeInsets.only(left: 10),
              child:
                  CustomText(text: 'Releasing On - ' + launch_on, size: 14, color: Colors.white)),
          Container(
              padding: EdgeInsets.only(left: 10),
              child:
                  CustomText(text: 'Language: ' + original_language, size: 14, color: Colors.white)),
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
