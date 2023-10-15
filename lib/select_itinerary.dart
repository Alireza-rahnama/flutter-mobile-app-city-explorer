import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:one_day_city_explorer/home_page.dart';
import 'grid_item_data.dart';
import 'adventure-enthusiasts.dart';
import 'history-afficinados.dart';
import 'culinary-seekers.dart';


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
      imagePath: 'assets/images/advent.jpg',
      icon: Icons.backpack,
      text: 'Adventure\n Enthusiast',
    ),
    GridItemData(
      imagePath: 'assets/images/parque-lage.jpg',
      icon: Icons.architecture,
      text: 'History\n Aficionados',
    ),
    GridItemData(
      imagePath: 'assets/images/brazilian-food.jpg',
      icon: Icons.restaurant,
      text: 'Culinary\n Seekers',
    ),
    GridItemData(
      imagePath: 'assets/images/night-life.jpg',
      icon: Icons.local_bar,
      text: 'Nightlife\n Revelers',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
          title: Text(
        "Select Itinerary",
          style: GoogleFonts.pacifico(
            color: Colors.white,
            fontSize: 30.0,
          )
          ),
          actions: <Widget>[
        IconButton(
          color: Colors.white,
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
              switch (index){
                case(0):
                  print("tapped navigate adventure enthusiast");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NavigateAdventureEnthusiastCards()),
                  );
                  break;
//TODO
                case(1):
                  print("tapped gridview- route not implemented yet");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NavigateHistoryAfficinadosCards()),
                  );
                  break;
//TODO
                case(2):
                  print("tapped gridview");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NavigateCalinarySeekerCards()),
                  );
                  break;
//TODO
                case(3):
                  print("tapped gridview");
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const NavigateAdventureEnthusiastCards()),
                  // );
                  break;
              }

            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35) ,
                image: DecorationImage(
                  image: AssetImage(gridData[index].imagePath),
                  fit: BoxFit.cover,
                  opacity: 0.7,
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
