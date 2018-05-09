import gab.opencv.*;
import processing.video.*;

OpenCV opencv;
Capture video;

void setup() {
  frameRate(15);
  //PImage src = loadImage("robot_light.jpg");
  //src.resize(800, 0);
  
  //size(src.width, src.height);
  size(640, 480);
  video = new Capture(this, 640, 480);
  opencv = new OpenCV(this, 640, 480);
  
  //opencv = new OpenCV(this, src);

  video.start();

}

void draw() {
  opencv.loadImage(video);

  image(video, 0, 0 );
  
  //image(opencv.getOutput(), 0, 0); //draw openCV output, this is what opencv sees
  
  PVector loc = opencv.max();
  
  stroke(map(loc.x,0,width,0,255), map(loc.y, 0, height, 0, 255), 0);
  strokeWeight(4);
  noFill();
  ellipse(loc.x, loc.y, 20, 20);
}

void captureEvent(Capture c) {
  c.read();
}