void startGame(){
 //TODO Implement 
 startedGame = true;
 start.draw=false;
}

void determineVictory(){
  startedGame = false;
    netCuts = countNetcuts(nodes, connections, playerPartition);
    Iteration currentIteration = new Iteration(nodes);

    if (netCuts <= bestNetCut) {
      if (currentIteration.checkBalanced()) {
        showPlayerVictory(true);
      } else {
        showUnbalanced();
      }
    } else {
      showPlayerVictory(false);
    }
}
