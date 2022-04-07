import 'package:heroapp/widget/details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:heroapp/widget/hero_card.dart';
import 'package:heroapp/model/hero.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Avengers> heroes = [];

  @override
  void initState() {
    heroes = heroList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('The Avenger Heroes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: ListView.builder(
          itemCount: heroes.length,
          itemBuilder: (context, index) => HeroCard(
            hero: heroes[index], 
            onPressed: () {
              Get.to(DetailsPage(hero: heroes[index]));
            }
          ),
        ),
      ),
    );
  }
}
