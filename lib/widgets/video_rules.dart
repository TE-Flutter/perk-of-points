import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:perk_of_points/widgets/main_drawer.dart';

class YoutubePlayerDemo extends StatefulWidget {
  @override
  _YoutubePlayerDemo createState() => _YoutubePlayerDemo();
}

class _YoutubePlayerDemo extends State<YoutubePlayerDemo> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: '-BYWbosiYlw',
      flags: YoutubePlayerFlags(
        autoPlay: true,
        enableCaption: true,
        mute: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info'),
      ),
      drawer: MainDrawer(),
      body: Container(
        child: YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            progressColors: ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
            ),
            onReady: () {
              _controller.addListener(() {});
            },
          ),
          builder: (context, player) => player,
        ),
      ),
    );
  }
}
