import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:perk_of_points/widgets/main_drawer.dart';

class InfoPageLink extends StatelessWidget {
  const InfoPageLink({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Info'),
        ),
        drawer: MainDrawer(),
        body: Center(
          child: Link(
            target: LinkTarget.self,
            uri: Uri.parse('https://twitter.com'),
            builder: ((context, followLink) => ElevatedButton(
                  child: Text('Twitter'),
                  onPressed: followLink,
                )),
          ),
        ),
      );
}
