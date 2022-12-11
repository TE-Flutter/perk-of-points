import 'package:flutter/material.dart';
import 'package:perk_of_points/util/game_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // padding constants
  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  // list of smart devices
  List myGamesList = [
    ["UNO", "lib/images/uno_logo.png"],
    ["DOS", "lib/images/dos_logo.png"],
    ["UNO Flip", "lib/images/unoflip_logo.png"],
    ["Manchkin", "lib/images/manchkin_logo.png"],
    ["SET", "lib/images/set_logo.png"],
    ["Scrabble", "lib/images/scrabble_logo.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // app bar
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: verticalPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // menu icon
                  Icon(
                    Icons.info,
                    size: 45,
                    color: Colors.grey[800],
                  ),

                  // account icon
                  Icon(
                    Icons.settings,
                    size: 45,
                    color: Colors.grey[800],
                  )
                ],
              ),
            ),

            const SizedBox(height: 20),

            // welcome home
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Perk of Points",
                    style: TextStyle(fontSize: 30, color: Colors.grey.shade800),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Divider(
                thickness: 1,
                color: Color.fromARGB(255, 204, 204, 204),
              ),
            ),

            const SizedBox(height: 20),

            // smart devices grid
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text(
                "Game List",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.grey.shade800,
                ),
              ),
            ),
            const SizedBox(height: 5),

            // grid
            Expanded(
              child: GridView.builder(
                itemCount: 6,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.1,
                ),
                itemBuilder: (context, index) {
                  return GameList(
                    gameName: myGamesList[index][0],
                    iconPath: myGamesList[index][1],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
