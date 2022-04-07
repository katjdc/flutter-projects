import 'package:heroapp/model/hero.dart';
import 'package:flutter/material.dart';

class HeroCard extends StatelessWidget {
  HeroCard({
    required this.hero,
    required this.onPressed,
  });

  Avengers hero;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        width: double.infinity,
        height: 350.0,
        child: Stack(
          children: [
            Positioned(
              left: 50,
              top: 0,
              bottom: 65,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(253,170,170,1),
                  borderRadius: BorderRadius.circular(20.0)
                ),
                constraints: const BoxConstraints(
                  maxHeight: 200,
                  maxWidth: 300
                ),
              )
            ),
            Positioned(
              left: 3.0,
              child: Hero(
                tag: hero.id,
                child: Image.asset(
                  hero.heroImage,
                  width: 200,
                  height: 250
                ),
              )
            ),
            Positioned(
              left: 165.0,
              top: 105.0,
              child: Text(
                hero.name,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Avengeance Heroic Avenger',
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ]
        )
      )
    );
  }
}
