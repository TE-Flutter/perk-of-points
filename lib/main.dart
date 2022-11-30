import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Game {
  final String title;

  const Game({
    required this.title,
  });
}

/// List of courses to display. Typically, this would come from a database.
const List<Game> games = [
  Game(title: 'UNO'),
  Game(title: 'SET'),
  Game(title: 'DOS'),
  Game(title: 'UNO Flip'),
  Game(title: 'Scrabble'),
  Game(title: 'SET'),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GamesListScreen(),
    );
  }
}

class GamesListScreen extends StatelessWidget {
  const GamesListScreen({super.key});

  void gotoDetailsScreen(BuildContext ctx, Game game) {
    Navigator.push(
      ctx,
      MaterialPageRoute(
        builder: (context) => GameDetailsScreen(game: game),
      ),
    );
  }

  Widget buildItem(BuildContext ctx, int index) {
    Game game = games[index];

    return ListTile(
      leading: const FlutterLogo(),
      title: Text(game.title),
      trailing: const Icon(Icons.chevron_right),
      onTap: () => gotoDetailsScreen(ctx, game),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Game List')),
      body: ListView.builder(
        itemCount: games.length,
        itemBuilder: buildItem,
      ),
    );
  }
}

class GameDetailsScreen extends StatelessWidget {
  final Game game;

  const GameDetailsScreen({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(game.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Taught by ${game.title}'),
          ],
        ),
      ),
    );
  }
}
