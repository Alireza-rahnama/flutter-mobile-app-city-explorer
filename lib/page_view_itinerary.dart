import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'grid_item_data.dart';
import 'adventure-enthusiasts.dart';
import 'history-afficinados.dart';
import 'culinary-seekers.dart';
import 'nightlife-revelers.dart';

class CategoryPageView extends StatelessWidget {
  const CategoryPageView({super.key});

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
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Select Itinerary",
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
      imagePath: 'assets/images/advent.jpg',
      icon: Icons.star,
      text: 'Adventure Enthusiast',
    ),
    GridItemData(
      imagePath: 'assets/images/historic.jpg',
      icon: Icons.museum,
      text: 'History Aficionados',
    ),
    GridItemData(
      imagePath: 'assets/images/brazilian-food.jpg',
      icon: Icons.music_note,
      text: 'Culinary Seekers',
    ),
    GridItemData(
      imagePath: 'assets/images/night-life.jpg',
      icon: Icons.wine_bar,
      text: 'Nightlife Revelers',
    ),
  ];

  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      controller: controller,
      children: <Widget>[
        _buildGridItem(gridData[0], context),
        _buildGridItem(gridData[1], context),
        _buildGridItem(gridData[2], context),
        _buildGridItem(gridData[3], context),
      ],
    );
  }

  Widget _buildGridItem(GridItemData item, BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (item.text) {
          case "Adventure Enthusiast":
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const NavigateAdventureEnthusiastCards()),
            );

          case "History Aficionados":
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const NavigateHistoryAfficinadosCards()),
            );

          case "Culinary Seekers":
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const NavigateCalinarySeekerCards()),
            );

          case "Nightlife Revelers":
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NavigateNightLifeRevelersCards()),
            );
        }
      },
      child: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Opacity(
              opacity: 0.6,
              child: Image.asset(
                item.imagePath,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: Text(
              item.text,
              style: GoogleFonts.pacifico(
                color: Colors.white,
                fontSize: 40.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
