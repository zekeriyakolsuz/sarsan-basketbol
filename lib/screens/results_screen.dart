import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> results;

  ResultsScreen({required this.results});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Results'),
      ),
      body: ListView.builder(
        itemCount: results.length,
        itemBuilder: (context, index) {
          final result = results[index];
          return ListTile(
            title: Text('${result['teamA']} vs ${result['teamB']}'),
            subtitle: Text('Score: ${result['scoreA']} - ${result['scoreB']}'),
          );
        },
      ),
    );
  }
}