import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'select_itinerary.dart';
import 'card-data.dart';

void main() {
  runApp(const NavigateCards());
}

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
        home: NavigateAllCards()
    );
  }
}

class NavigateAllCards extends StatelessWidget {
  NavigateAllCards({super.key});
  late List<CardData> list;

  NavigateAllCards.fromCardsList({required List<CardData> this.list});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Adventure Enthusiasts",
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
        body: AllMyCards.withCardsList(cardDataList: list
        ));
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
                return MyCard2.fromGridItemData(gridItemData: item);
              },
            )
        )
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 500,
        child: Card(
          color: Colors.blue,
          // margin: EdgeInsets.all(10.0),
          // You can customize the card appearance using properties like elevation, shape, color, etc.
          elevation: 4,
          // Customize the elevation of the card
          child: Column(children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/images/night-life.jpg',
              // Replace with your image file path
              width: 400, // Customize the image width
              // Customize the image height
              fit: BoxFit
                  .fill, // Adjust the fit as needed (cover, contain, etc.)
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Your paragraph of text goes here. This is just a sample text to show how it works.'
                    'cbksdhbcsdhjcbdsjhcbdsjcbdsjcbdjk cdbn jkdncjdknd',
                style: TextStyle(
                  fontSize: 16, // Customize the text font size
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Example'),
      ),
      body: Center(
        child: Container(
          width: 300, // Customize the card width
          child: Card(
            elevation: 4,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/images/night-life.jpg',
                    width: 420,
                    height: 900,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Your variable-length paragraph of text goes here. This is just a sample text to show how it works. You can add more text to see the card adjust its height dynamically based on the content.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyCard2 extends StatelessWidget {
  var gridItemData;



  MyCard2.fromGridItemData({
    required this.gridItemData
  });

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
                child: Text(
                  gridItemData.description,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
