import 'package:flutter/material.dart';
import 'grid_item_data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'card-data.dart';
import 'final-route.dart';

List<CardData> myList = [
  CardData(imagePath: 'assets/images/bares-nos-arcos-da-Lapa-1.png',
      title: 'Lapa Arches',
      description: "This iconic landmark comes alive at night with numerous bars and clubs underneath the illuminated arches. You can enjoy live samba music, dance the night away, and mingle with locals and tourists. Try traditional caipirinhas and local street food."),
  CardData(imagePath: 'assets/images/club.jpg',
      title: 'Ipanema Neighborhood',
      description: "The Ipanema neighborhood is home to many upscale bars and clubs. One popular spot is 'Garota de Ipanema,' where you can listen to bossa nova music and enjoy a lively atmosphere. There are also many street bars and cafes open late."),
  CardData(imagePath: 'assets/images/samba.jpg',
      title:'Laranjeiras',
      description: "This neighborhood is known for its local samba clubs, where you can dance to traditional Brazilian rhythms. 'Carioca da Gema' and 'Rio Scenarium' are two popular choices."),
  CardData(imagePath: 'assets/images/ncb.jpg',
      title:'Lapa 40 Graus',
      description: "A massive nightclub in the Lapa neighborhood, Lapa 40 Graus hosts live music, DJs, and a large dance floor. It's perfect for those looking to dance the night away to various music styles."),
  CardData(imagePath: 'assets/images/night.png',
      title:'Copacabana Beach',
      description: "You can't visit Rio without experiencing a beachfront party. Join a beachfront kiosk, like Copacabana Palace or Fasano Al Mare, for cocktails and live music, or simply join the locals and fellow tourists for a beachside gathering."),
];

class NavigateNightLifeRevelersCards extends StatelessWidget {
  const NavigateNightLifeRevelersCards({super.key});

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
        home: NavigateAllCards.fromCardsList(list: myList, category: 'Nightlife Revelers')
    );
  }
}