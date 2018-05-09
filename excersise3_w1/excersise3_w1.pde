void settings() {
  size(640, 480);
}

void setup() {
}

void draw() {
  //the line
  background(255);
  line(0, height, mouseX, mouseY);

  //location based rect size
  rect(10, 10, mouseX, mouseY);

  //location based colour circle
  fill(map(mouseX, 0, width, 0, 255));
  ellipse(width/2, height/2, width/4, height/4);
  fill(0);
}