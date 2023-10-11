import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:one_day_city_explorer/home_page.dart';
import 'grid_item_data.dart';

void main() {
  runApp(const Category());
}

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),
        cardColor: Color(0xFF008080),
        useMaterial3: true,
      ),
      home: CategoryView(),
    );
  }
}

class CategoryView extends StatelessWidget {
  CategoryView({super.key});

  final List<GridItemData> gridData = [
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
    return Scaffold(
      appBar: AppBar(title: Text(
        "Select Itinerary",
          style: GoogleFonts.pacifico(
            color: Colors.black,
            fontSize: 30.0,
          )
          ),
          actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          tooltip: 'Go back',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          },
        ),
      ]),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
            childAspectRatio: 0.53
        ),
        itemCount: gridData.length,

          itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35) ,
                image: DecorationImage(
                  image: AssetImage(gridData[index].imagePath),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    gridData[index].icon,
                    size: 36.0,
                    color: Colors.white54,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    gridData[index].text,
                    style: GoogleFonts.pacifico(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
