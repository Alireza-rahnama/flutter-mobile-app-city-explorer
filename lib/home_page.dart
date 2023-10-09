import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              top: 100,
              // bottom: 800,
            ), // Add padding here
            child: Text(
              'Welcome to Rio',
              style: GoogleFonts.pacifico(
                textStyle: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontSize: 34,
                ),
              ),
            ),
          ),

          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(
              top: 700,
              bottom: 160,
            ), // Add padding here
            child: ElevatedButton(
              onPressed: () {
                print("hello");
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
                    fontStyle: FontStyle.italic
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}