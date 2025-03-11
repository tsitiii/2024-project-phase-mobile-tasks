import 'package:flutter/material.dart';

import 'login.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30), // Rounded corners
          child: Container(
            padding: const EdgeInsets.all(30),
            color: Colors.blue, // Background color of the Container
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(image: AssetImage('images/food.jpg')),
                const SizedBox(height: 30),
                const Text(
                  "Enjoy ",
                  style: TextStyle(
                    color: Colors.white, // Change to black or appropriate color
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Your Food",
                  style: TextStyle(
                    color: Colors.white, // Change to black or appropriate color
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blueGrey,
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
