import 'package:flutter/material.dart';

class LeaderboardScreen extends StatelessWidget {
  final List<Map<String, dynamic>> highScores = [
    {'name': 'Player 1', 'score': 100},
    {'name': 'Player 2', 'score': 90},
    {'name': 'Player 3', 'score': 80},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leaderboard'),
      ),
      body: ListView.builder(
        itemCount: highScores.length,
        itemBuilder: (context, index) {
          final player = highScores[index];
          return ListTile(
            title: Text(player['name']),
            trailing: Text(player['score'].toString()),
          );
        },
      ),
    );
  }
}