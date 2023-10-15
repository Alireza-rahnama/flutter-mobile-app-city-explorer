import 'package:flutter/material.dart';
import 'card-data.dart';
import 'final-route.dart';

void main() {
  runApp(const NavigateHistoryAfficinadosCards());
}

List<CardData> myList = [
  CardData(imagePath: 'assets/images/redeemer.jpg',
      title: 'Cristo Redentor',
      description: "One of the most iconic symbols of Rio de Janeiro, this colossal statue of Jesus Christ stands atop the Corcovado Mountain. It was completed in 1931 and offers panoramic views of the city."),
  CardData(imagePath: 'assets/images/santa.jpg',
      title: 'Santa Teresa Neighborhood',
      description: "This historic neighborhood is known for its colonial-era architecture, cobblestone streets, and the famous Santa Teresa tram. It's a charming area filled with art studios, cultural spaces, and historic mansions."),
  CardData(imagePath: 'assets/images/musum.jpg',
      title:'National Museum',
      description: "Located in the former Imperial Palace of Brazil, this museum houses an extensive collection of natural history, anthropology, and archaeology. It is the oldest scientific institution in Brazil."),
  CardData(imagePath: 'assets/images/theatro.jpg',
      title:'Theatro Municipal',
      description: "Built in a grand neoclassical style, this theater is known for its opulent interior and hosts world-class opera, ballet, and classical music performances."),
  CardData(imagePath: 'assets/images/mosteiro.jpg',
      title:'São Bento Monastery',
      description: "The nearby rivers and rainforests offer opportunities for thrilling white-water rafting."),

];

class NavigateHistoryAfficinadosCards extends StatelessWidget {
  const NavigateHistoryAfficinadosCards({super.key});

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
        home: NavigateAllCards.fromCardsList(list: myList, category: 'History Aficionados')
    );
  }
}