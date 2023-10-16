import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:one_day_city_explorer/page_view_itinerary.dart';
import 'select_itinerary.dart';
import 'package:onboarding_animation/onboarding_animation.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),
        cardColor: Color(0xFF008080),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  static var selectedItinerary;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/rio-de-janeiro.png',
              // Replace with your image file path
              fit: BoxFit.cover, // This will cover the entire screen
            ),
          ),
          Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(
                top: 120,
                // bottom: 800,
              ), // Add padding here

              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('Welcome to Rio',
                    speed: Duration(milliseconds: 1000),
                    textStyle: const TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'pacifico',
                              fontStyle: FontStyle.italic
                            ),
                  ),
                ],
                isRepeatingAnimation: true,
              )),

          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(
              top: 700,
              bottom: 160,
            ), // Add padding here
            child: ElevatedButton(
              onPressed: () {
                print("hello");
                selectedItinerary = 'gridView';
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Category()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white60, // Background color
              ),
              child: Text(
                'Explore Itineraries',
                style: GoogleFonts.pacifico(
                  textStyle: TextStyle(
                      fontSize: 34,
                      color: Colors.black,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(
              top: 700,
              bottom: 90,
            ), // Add padding here
            child: ElevatedButton(
              onPressed: () {
                selectedItinerary = 'pageView';
                print("hello");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoryPageView()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white60, // Background color
              ),
              child: Text(
                'Page View Itineraries',
                style: GoogleFonts.pacifico(
                  textStyle: TextStyle(
                      fontSize: 34,
                      color: Colors.black,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
