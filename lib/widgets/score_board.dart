import 'package:flutter/material.dart';

class ScoreBoard extends StatelessWidget {
  final int score;

  ScoreBoard({required this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      child: Text(
        'Score: $$score',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}