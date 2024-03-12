void drawBattleShips(){
  for (int j = 0; j < 16; j++){
      if (grid[j][j] == 1){
        fill(0);
        rect(30+j*30,30+j*30,30,30);
      }
  }
}
