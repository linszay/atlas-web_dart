int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAPoints = 0;
  int teamBPoints = 0;

  teamA.forEach((shotType, score) {
    if (shotType == 'freeThrow') {
      teamAPoints += score;
    } else if (shotType == '2Pointer') {
      teamAPoints += score * 2;
    } else if (shotType == '3Pointer') {
      teamAPoints += score * 3;
    }
  });

  teamB.forEach((shotType, score) {
    if (shotType == 'freeThrow') {
      teamBPoints += score;
    } else if (shotType == '2Pointer') {
      teamBPoints += score * 2;
    } else if (shotType == '3Pointer') {
      teamBPoints += score * 3;
    }
  });

  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}
