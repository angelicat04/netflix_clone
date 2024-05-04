//import 'dart:html';
import 'dart:ui';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class UserHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
      //color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(children: [
            Container(
              height: 630,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/user_home_bckgrd.png"),
                    fit: BoxFit.cover),
              ),
            ),
            Positioned(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/netflix_small_logo.png"),
                    Row(
                      children: [
                        Image.asset("assets/icons/user_home_icon1.png"),
                        Image.asset("assets/icons/user_home_icon2.png"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: 35,
              child: Container(
                margin: EdgeInsets.only(top: 13),
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextList("TV Shows"),
                    TextList("Movies"),
                    Row(
                      children: [
                        TextList("Categories"),
                        SizedBox(
                          child: Image.asset(
                            "assets/icons/chevron-down.png",
                            width: 15,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 500,
              child: Container(
                alignment: Alignment.center,
                width: 385,
                height: 300,
                child: ListView(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: TextList("Exiting  -  Reality TV  -  Competition"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              child: Text(
                                "My List",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            null;
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                child: Text(
                                  "Play",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              child: Icon(
                                Icons.info_outline,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              child: Text(
                                "Info",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text(
                        "Continue Watching with Ellie",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
          Column(
            children: [
              Container(
                //margin: EdgeInsets.only(bottom: 8),
                height: 182,
                width: double.infinity,
                color: Colors.black,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    cover("cover5.png"),
                    cover("cover6.png"),
                    cover("cover7.jpeg"),
                    cover("cover5.png"),
                    cover("cover6.png"),
                    cover("cover7.jpeg"),
                  ],
                ),
              ),
            ],
          ),
          Container(
            color: Colors.black,
            margin: EdgeInsets.only(bottom: 0.0),
            height: 54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(
                      child: Icon(
                        Icons.home_filled,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        "Home",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      child: Icon(
                        Icons.smart_display_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        "News & Hot",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      child: Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        "Fast Laughs",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      child: Icon(
                        Icons.search_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        "Search",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class TextList extends StatelessWidget {
  String myText;
  TextList(this.myText);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        '${myText}',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w300, fontSize: 17),
      ),
    );
  }
}

class cover extends StatelessWidget {
  String files;
  cover(this.files);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 15, left: 5),
          height: 180,
          width: 110,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
          child: Container(
            child: Image.asset(
              'assets/images/${files}',
              width: 110,
            ),
          ),
        ),
        Positioned(
            bottom: 70.0,
            right: 30.0,
            child: Icon(
              Icons.play_circle_fill_outlined,
              color: Color.fromARGB(208, 14, 3, 3),
              size: 50,
            ))
      ],
    );
  }
}
