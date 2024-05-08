import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_clone/features/movies/states/counter_state.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({
    super.key,
  });

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  @override
  void initState() {
    counterN.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: const Color.fromARGB(255, 0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(
                Icons.home_filled,
                color: Colors.grey,
              ),
              Text(
                "Home",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              )
            ],
          ),
          Column(
            children: [
              Stack(children: [
                Icon(
                  Icons.smart_display_rounded,
                  color: Colors.grey,
                ),
                Positioned(
                    right: 0,
                    child: Container(
                      color: const Color.fromARGB(255, 236, 46, 32),
                      child: Text(
                        "${counterN.value}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    )),
              ]),
              Text(
                "News & Hot",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.grey,
              ),
              Text(
                "Fast Laughs",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.search_outlined,
                color: Colors.grey,
              ),
              Text(
                "Search",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.download_for_offline_outlined,
                color: Colors.grey,
              ),
              Text(
                "Downloads",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
