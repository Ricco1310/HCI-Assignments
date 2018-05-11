void settings() {
  size(640, 480, P2D);
}

void setup() {
  
}

void draw() {
  //first circle
  noStroke();
  fill(0, 0, 255);
  ellipse(width/2, height/2, width/2, height/2);
  
  //second circle
  noStroke();
  fill(255, 0, 0);
  ellipse(100, 100, 70,70);  
  
  //third circle
  stroke(255,255, 0);
  fill(0, 255, 0);
  ellipse(400, 300, 150, 70);
  
  //fourth circle
  stroke(0, 0, 255);
  fill(255, 0, 255);
  ellipse(300, 150, 250, 190);
}