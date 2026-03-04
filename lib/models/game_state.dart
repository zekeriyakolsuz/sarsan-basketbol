// game_state.dart

class GameState {
  int score;
  int timeLeft;
  List<String> playerActions;

  GameState({this.score = 0, this.timeLeft = 0, List<String>? actions})
      : playerActions = actions ?? [];

  void updateScore(int points) {
    score += points;
  }

  void updateTime(int time) {
    timeLeft += time;
  }

  void addPlayerAction(String action) {
    playerActions.add(action);
  }

  @override
  String toString() {
    return 'GameState(score: $score, timeLeft: $timeLeft, playerActions: $playerActions)';
  }
}