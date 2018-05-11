void settings() {
  size(640, 480, P2D);
}

void setup() {
  
}

void draw() {
  //first shape
  fill(255,0,0);
  quad(40, 80, 480, 40, 410, 320, 80, 290);
  //second shape
  fill(0,255,0);
  triangle(320, 400, 500, 470, 200, 460);
  //third shape
  stroke(70);
  line(0,0,width,height);
  //fourth shape
  fill(0,0,255);
  rect(10, 300, 150, 100);
}