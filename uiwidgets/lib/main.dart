import 'package:flutter/material.dart';

void main() {
  runApp(const LoadPictureAndFont());
}

class LoadPictureAndFont extends StatelessWidget {
  const LoadPictureAndFont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const[
            Image(
              width: 200,
              height: 200,
              image: AssetImage(
                "asset/images/Katrine.jpg",
            )),
          SizedBox(
            height: 20.0,
          ),
          Text(
              "Katrine Joy Dela Cruz",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: "AvengerRegular-zvgl",
              ),
            )
          ],
        ),
      ),
    );
  }
}
