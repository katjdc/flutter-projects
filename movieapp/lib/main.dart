import 'package:flutter/material.dart';
import 'package:movieapp/widget/customtext.dart';
import 'package:movieapp/widget/trending.dart';
import 'package:movieapp/widget/tv.dart';
import 'package:tmdb_api/tmdb_api.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List trendingMovies = [];
  List tv = [];

  // API Key and Access Token from themoviesdb.org
  final String APIKey = '1eaedf0164355b4aa1fa864bb114c1f6';
  final String AccessToken = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxZWFlZGYwMTY0MzU1YjRhYTFmYTg2NGJiMTE0YzFmNiIsInN1YiI6IjYyNTM5MTY4YjZjMjY0NTdhZmQ0NmExMSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.MSk9H1952NS0IO4kjl2v_CXmnU_4InZSb-2ZEtpJxFc';

  @override
  void initState() {
    super.initState();
    loadmovies();
  }

  // Connection to themoviesdb.org API
  loadmovies () async {
    TMDB tmdbWithCustomLogs = TMDB(ApiKeys(APIKey, AccessToken),
      logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true));

    Map trendingResults = await tmdbWithCustomLogs.v3.trending.getTrending(mediaType: MediaType.movie);
    Map tvresult = await tmdbWithCustomLogs.v3.tv.getPopular();

    setState(() {
      trendingMovies = trendingResults['results'];
      tv = tvresult['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const CustomText(
            text: 'HAU Flix 🎬', 
            color: Colors.white,
            size: 30.0,
          ),
        ),
        body: ListView(
          children: [
            TrendingMovies(trending: trendingMovies),
            TV(tv: tv),
          ],
        ),
      ),
    );
  }
}