class Circle {
  int originX;
  int originY;
  int sizeX;
  int sizeY;
  boolean borderOn;
  color circleColor;
  
  void Circle() {
    originX = int(random(width));
    originY = int(random(height));
    sizeX = int(random(width/2));
    sizeY = int(random(height/2));
    if (int(random(1)) == 1) {
      borderOn = true;
    }
    else {
      borderOn = false;
    }
  }
}