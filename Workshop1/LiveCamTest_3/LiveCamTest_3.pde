import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;

void setup() {
  size(1280, 720);
  ellipseMode(CORNER);
  rectMode(CENTER);
  video = new Capture(this, width/2, height/2);
  opencv = new OpenCV(this, width/2, height/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  

  video.start();
}

void draw() {
  scale(2);
  opencv.loadImage(video);

  image(video, 0, 0 );

  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();
  println(faces.length);

  for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    //ellipse(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
    fill(0);
    noStroke();
    rect(faces[i].x+faces[i].width/2, faces[i].y+faces[i].height/2-25, faces[i].width, faces[i].height/4);
  }
}

void captureEvent(Capture c) {
  c.read();
}