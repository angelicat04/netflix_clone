import 'package:flutter/material.dart';
//import 'package:netflix_clone/features/home/screens/user_home.dart';
import 'package:netflix_clone/features/home/screens/searchbar_tool.dart';
import 'package:netflix_clone/features/home/screens/bottom_navigationbar_tool.dart';

class SearchScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.black,
            width: double.infinity,
          ),
          Positioned(child: search()),
          Positioned(
              child: Container(
            margin: EdgeInsets.only(top: 55),
            child: Text(
              "Movies & TV",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          )),
          Positioned(
              child: Container(
            margin: EdgeInsets.only(top: 90),
            child: ListView(
              children: [
                searchVideo("search_cover1.png", "The Sea Beast"),
                searchVideo("search_cover2.png", "Peaky Blinders"),
                searchVideo("search_cover3.png", "The Umbrella Academy"),
                searchVideo("search_cover4.png", "Keep Sweet, Pray, and Obey"),
                searchVideo("search_cover5.png", "Attack on Pearl Harbour"),
                searchVideo("search_cover6.png", "The King of Staten Island"),
                searchVideo("search_cover7.png", "Blonde"),
                searchVideo("search_cover8.png", "Heat"),
                searchVideo("search_cover9.png", "HUSTLE"),
                searchVideo("search_cover10.png", "Half Time"),
              ],
            ),
          )),
        ],
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}

class searchVideo extends StatelessWidget {
  String image;
  String title;
  searchVideo(this.image, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, bottom: 10),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: Image.asset(
              "assets/images/${image}",
            ),
          ),
          SizedBox(
            width: 240,
            child: Text(
              "$title",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 40),
            child: Icon(
              Icons.play_circle_fill,
              color: Colors.white,
              size: 40,
            ),
          )
        ],
      ),
    );
  }
}
