/***********************
  Don Castillo, NMED 3380 B
  Project 1: Drawing Program
  Last Modified: 9/26 
************************/

// variables
color brushColor = color(0, 0, 0, 255);
color canvasColor = color(255, 255, 255, 255);


void setup(){
  size(800, 600);  // window size
  background(canvasColor);
  //frameRate(10);
}


void draw(){
  noStroke();
  fill(brushColor);
  strokeWeight(10);
  stroke(0,0,0,255);
}


void mousePressed(){

  line(mouseX, mouseY, pmouseX, pmouseY);
}

void keyPressed(){
  switch(key){
    case 'c':
    case 'C':
      reset();
      break;
    default:
      break;
  }
}


void reset(){
   background(canvasColor);
}
