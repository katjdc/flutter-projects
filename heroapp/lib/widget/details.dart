import 'package:heroapp/model/hero.dart';
import 'package:heroapp/widget/info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({required this.hero});

  final Avengers hero;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            hero.name,
            style: const TextStyle(
              fontFamily: 'Avengeance Heroic Avenger',
              fontSize: 30.0
            ),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.redAccent,

        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              Container(
                padding: const EdgeInsets.all(10.0),
                height: 300.0,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(253,170,170,1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0)
                  )
                ),
                child: GestureDetector(
                  child: Hero(
                    tag: hero.heroImage,
                    child: Image(
                      image: AssetImage(hero.heroImage),
                    ),
                  ),
                  onTap: () {
                    Get.back();
                  }
                ),
              ),
              Container(
                height: 300,
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Header(text: 'Description'),
                      SizedBox(height: 10.0),
                      SubHeader(text: hero.description)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}