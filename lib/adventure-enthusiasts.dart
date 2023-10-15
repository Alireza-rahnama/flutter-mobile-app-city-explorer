import 'package:flutter/material.dart';
import 'grid_item_data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'select_itinerary.dart';
import 'card-data.dart';
import 'final-route.dart';

void main() {
  runApp(const NavigateCards());
}

List<CardData> myList = [
  CardData(imagePath: 'assets/images/rio-de-janeiro.png',
      description: "sxabschjbsdcsdb cjmsd"),
  CardData(imagePath: 'assets/images/rio-de-janeiro.png',
      description: "sxabschjbsdcsdb cjmsd"),
  CardData(imagePath: 'assets/images/rio-de-janeiro.png',
      description: "sxabschjbsdcsdb cjmsd"),
];

class NavigateCards extends StatelessWidget {
  const NavigateCards({super.key});

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
        home: NavigateAllCards.fromCardsList(list: [
          CardData(imagePath: 'assets/images/rio-de-janeiro.png',
              description: "sxabschjbsdcsdb cjmsd"),
          CardData(imagePath: 'assets/images/rio-de-janeiro.png',
              description: "sxabschjbsdcsdb cjmsd"),
          CardData(imagePath: 'assets/images/rio-de-janeiro.png',
              description: "sxabschjbsdcsdb cjmsd"),
        ])
    );
  }
}