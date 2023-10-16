import 'package:flutter/material.dart';
import 'card-data.dart';
import 'final-route.dart';

List<CardData> myList = [
  CardData(imagePath: 'assets/images/feijoada.jpg',
      title: 'Feijoada',
      description: "Start your culinary journey with Brazil's national dish, Feijoada. It's a hearty black bean stew with pork, served with rice, collard greens, and orange slices. Try it at a traditional Brazilian restaurant like Casa da Feijoada."),
  CardData(imagePath: 'assets/images/churrascaria.jpg',
      title: 'Churrascaria',
      description: "For meat lovers, a visit to a churrascaria is a must. These Brazilian steakhouses offer a never-ending selection of grilled meats, including picanha (sirloin cap), sausage, and more. Fogo de Chão is a popular chain to explore"),
  CardData(imagePath: 'assets/images/acai.jpg',
      title:'Açaí Bowls',
      description: "Cool off with a refreshing açaí bowl. It's a frozen smoothie made from açaí berries and topped with granola, fruits, and honey. You'll find these at juice bars and cafés all over the city."),
  CardData(imagePath: 'assets/images/beteco.jpeg',
      title:'Botecos',
      description: "Rio's traditional neighborhood bars, known as 'botecos,' are great places to savor local snacks like coxinha (deep-fried chicken croquettes) and pastéis (fried pastries). Try the Boteco Belmonte for an authentic experience."),
  CardData(imagePath: 'assets/images/seafood.jpg',
      title:'Seafood',
      description: "With its coastal location, Rio offers a bounty of fresh seafood. Visit the Copacabana Fish Market for a wide range of options, from grilled fish to ceviche."),

];

class NavigateCalinarySeekerCards extends StatelessWidget {
  const NavigateCalinarySeekerCards({super.key});

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
        home: NavigateAllCards.fromCardsList(list: myList, category: 'Culinary Seekers')
    );
  }
}