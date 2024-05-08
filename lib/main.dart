import 'package:flutter/material.dart';
import 'package:netflix_clone/features/about/screens/about_screen.dart';
import 'package:netflix_clone/features/home/screens/home_screen.dart';
import 'package:netflix_clone/features/movies/movie_grid.dart';
import 'features/home/screens/search_scroll.dart';
import 'features/home/screens/user_home.dart';

void main() {
  //MaterialApp test=MaterialApp(title: "Première appli", home:   Scarffold());
  runApp(NetflixCloneApp());
}

class NetflixCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Netflix_Clone",
      home: MoviesGridScreen(),
    );
  }
}
