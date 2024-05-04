import 'package:flutter/material.dart';

//import 'features/screens/home_screen.dart
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
      home: UserHome(),
    );
  }
}
