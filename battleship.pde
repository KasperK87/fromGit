import processing.net.*;

Server server;

int grid[][];

void setup(){
  server = new Server(this, 8888);
  size(17*30,17*30);
  
  grid = new int[16][16];
  
  for (int i = 0; i < 16; i++){
    for (int j = 0; j < 16; j++){
      grid[i][j] = 0;
    }
  }
  
  grid[5][5] = 1;
  grid[5][6] = 1;
  grid[5][7] = 1;
}

void draw(){
  //draw gui
  for (int i = 0; i < 16; i++){
    //draws coordinates
    text(i, 40+30*i,15);
    text(i, 15, 45+30*i);
    //draws grid
    line(60+30*i, 30, 60+30*i, width);
    line(30, 60+30*i, height, 60+30*i);
    
    //draw battleships
    for (int j = 0; j < 16; j++){
      if (grid[i][j] == 1){
        fill(0);
        rect(30+i*30,30+j*30,30,30);
      }
    }
    
  }
}

void mousePressed(){
  println((int)(mouseX/30-1) + ", " + (int)(mouseY/30-1));
}
