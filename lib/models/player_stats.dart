class PlayerStats {
  String playerName;
  int gamesPlayed;
  int pointsScored;
  int assists;
  int rebounds;

  PlayerStats({
    required this.playerName,
    required this.gamesPlayed,
    required this.pointsScored,
    required this.assists,
    required this.rebounds,
  });

  @override
  String toString() {
    return 'Player: $playerName, Games: $gamesPlayed, Points: $pointsScored, Assists: $assists, Rebounds: $rebounds';
  }
}