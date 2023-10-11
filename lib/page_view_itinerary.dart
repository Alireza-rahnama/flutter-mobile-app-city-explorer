import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'grid_item_data.dart';

void main() {
  runApp(_Category());
}

class _Category extends StatelessWidget {
  _Category({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),
        cardColor: Color(0xFF008080),
        useMaterial3: true,
      ),
      home: PageViewItinerary(),
    );
  }
}

class PageViewItinerary extends StatelessWidget {
  PageViewItinerary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Select Itinerary",
                style: GoogleFonts.pacifico(
                  color: Colors.black,
                  fontSize: 30.0,
                )),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back_outlined),
                tooltip: 'Go back',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
              ),
            ]),
        body: _myPageViews());
  }
}

class _myPageViews extends StatelessWidget {
  _myPageViews({super.key});

  List<GridItemData> gridData = [
    GridItemData(
      imagePath: 'assets/images/1.jpeg',
      icon: Icons.star,
      text: 'Adventure\n Enthusiast',
    ),
    GridItemData(
      imagePath: 'assets/images/parque-lage.jpg',
      icon: Icons.museum,
      text: 'History\n Afcionados',
    ),
    GridItemData(
      imagePath: 'assets/images/rio-de-janeiro.png',
      icon: Icons.music_note,
      text: 'Culinary\n Seekers',
    ),
    GridItemData(
      imagePath: 'assets/images/night-life.jpg',
      icon: Icons.wine_bar,
      text: 'Nightlife\n Revelers',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children: const <Widget>[
        Center(
        child: Text('first Page'),
        ),
        Center(
          child: Text('Second Page'),
        ),
        Center(
          child: Text('Third Page'),
        ),
      ],
    );
  }
}
