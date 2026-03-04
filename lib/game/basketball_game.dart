class BasketballGame {
    int scoreTeamA = 0;
    int scoreTeamB = 0;

    void score(String team, int points) {
        if (team == 'A') {
            scoreTeamA += points;
        } else if (team == 'B') {
            scoreTeamB += points;
        }
    }

    String getScore() {
        return 'Team A: \(scoreTeamA), Team B: \(scoreTeamB)';
    }

    void reset() {
        scoreTeamA = 0;
        scoreTeamB = 0;
    }
}