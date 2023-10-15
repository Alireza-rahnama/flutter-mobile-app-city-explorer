import 'package:flutter/material.dart';
import 'grid_item_data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'select_itinerary.dart';
import 'card-data.dart';
import 'final-route.dart';

List<CardData> myList = [
  CardData(imagePath: 'assets/images/tijuca.jpg',
      title: 'Tijuca National Park',
      description: "This lush urban rainforest in the heart of the city provides opportunities for hiking, trail running, and exploring waterfalls."),
  CardData(imagePath: 'assets/images/rio-de-janeiro.png',
      title: 'Sugarloaf Mountain',
      description: "For rock climbing and incredible views, you can try climbing the granite walls of Sugarloaf Mountain. There are also hiking trails to the summit."),
  CardData(imagePath: 'assets/images/gliding.jpg',
      title:'Hang Gliding from São Conrado',
      description: "You can experience tandem hang gliding with expert pilots at São Conrado Beach. It's an adrenaline-pumping adventure."),
  CardData(imagePath: 'assets/images/surfing.jpeg',
      title:'Surfing',
      description: "Rio de Janeiro's coastline is perfect for surfing. Popular surf spots include Ipanema, Arpoador, and Barra da Tijuca."),
  CardData(imagePath: 'assets/images/rafting.jpg',
      title:'Rio de Janeiro Rafting',
      description: "The nearby rivers and rainforests offer opportunities for thrilling white-water rafting."),

];

class NavigateAdventureEnthusiastCards extends StatelessWidget {
  const NavigateAdventureEnthusiastCards({super.key});

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
        home: NavigateAllCards.fromCardsList(list: myList, category: 'Adventure Enthusiast')
    );
  }
}