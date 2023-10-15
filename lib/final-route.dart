import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'select_itinerary.dart';
import 'card-data.dart';

class NavigateCards extends StatelessWidget {
  const NavigateCards({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),
          // cardColor: Color(0xFF008080),
          useMaterial3: true,
        ),
        home: NavigateAllCards());
  }
}

class NavigateAllCards extends StatelessWidget {
  NavigateAllCards({super.key});

  late List<CardData> list;
  late String category;

  NavigateAllCards.fromCardsList(
      {required List<CardData> this.list, required String this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            title:
                Text(category,
                    style: GoogleFonts.pacifico(
                      color: Colors.white,
                      fontSize: 30.0,
                    )),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back_outlined),
                tooltip: 'Go back',
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Category()),
                  );
                },
              ),
            ]),
        body: AllMyCards.withCardsList(cardDataList: list));
  }
}

class AllMyCards extends StatelessWidget {
  AllMyCards({super.key});

  late List<CardData> cardDataList;

  AllMyCards.withCardsList({required this.cardDataList});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            child: ListView.builder(
      itemCount: cardDataList.length,
      itemBuilder: (context, index) {
        final item = cardDataList[index];
        return InfoCard.fromGridItemData(gridItemData: item);
      },
    )));
  }
}

class InfoCard extends StatelessWidget {
  var gridItemData;

  InfoCard.fromGridItemData({required this.gridItemData});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 390,
        height: 350, // Customize the card width
        child: Card(
          elevation: 4,
          child: ListView(
            children: <Widget>[
              Image.asset(
                gridItemData.imagePath,
                width: 200,
                height: 220,
                fit: BoxFit.cover,
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(gridItemData.title,
                        style: GoogleFonts.pacifico(
                          color: Colors.black,
                          fontSize: 20.0,
                        )),
                  )),
              Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Center(
                    child: Text(
                      gridItemData.description,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
