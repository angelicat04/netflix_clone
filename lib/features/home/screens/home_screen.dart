import 'package:flutter/material.dart';
import 'package:netflix_clone/features/home/screens/user_home.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/netflix_logo.png",
                  width: 100,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Privacy",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Text(
                      "Sign In",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "Unlimited movies, TV shows, and more.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                  ),
                ),
                Text(
                  "Watch anywhere. Cancelanytime",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Tap the link below to sign up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.sizeOf(context).width * 0.75,
              child: ColoredBox(
                color: const Color.fromARGB(255, 232, 44, 31),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserHome()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    elevation: 10,
                  ),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
