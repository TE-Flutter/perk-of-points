import 'package:flutter/material.dart';
import 'package:perk_of_points/widgets/video_rules.dart';

import '../screens/filters_screen.dart';
import '../screens/info_screen.dart';
import 'package:perk_of_points/widgets/video_rules.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, VoidCallback tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Lets play!',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile('Games', Icons.games, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile('Settings', Icons.settings, () {
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          }),
          buildListTile('Info', Icons.info, () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => InfoPageLink()));
          }),
          buildListTile('About app', Icons.video_call, () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => YoutubePlayerDemo()));
          }),
        ],
      ),
    );
  }
}
