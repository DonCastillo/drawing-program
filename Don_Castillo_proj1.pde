/***********************
  Don Castillo, NMED 3380 B
  Project 1: Drawing Program
  Last Modified: 9/26 
************************/

// variables
color brushColor = color(0, 0, 0, 255);
color canvasColor = color(255, 255, 255, 255);
//Button blackButton, whiteButton;
 

void setup(){
  size(800, 600);  
  background(canvasColor);
  displayButtons();

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


/***********************
  @desc: displays all buttons
         buttons are 5px apart from each other
************************/

void displayButtons(){
  
  color black = color(0, 0, 0);
  color red = color(255, 0, 0);
  color orange = color(255, 125, 0);
  color yellow = color(255, 255, 0);
  color[] swatches = { red, orange, yellow }; 
  Button colorButton;
  
  int posY = 10;
  int posX = 10;
  int w = 40;
  int h = 40;
  int margin = 5;
  
  println(swatches.length);
  for(int i = 0; i < swatches.length; i++ ) {
      println("x: " + posX + " y: " + posY);
      colorButton = new Button(swatches[i], posX, posY, w, h);
      colorButton.display();
      posY = posY + w + margin;  
  }
}




class Button {
    color buttonColor;
    int buttonX, buttonY;
    int buttonWidth, buttonHeight;
    
    // constructor
    Button(color pButtonColor, int pButtonX, int pButtonY, int pButtonWidth, int pButtonHeight){
        buttonColor = pButtonColor;
        buttonX = pButtonX;
        buttonY = pButtonY;
        buttonWidth = pButtonWidth;
        buttonHeight = pButtonHeight;
    }
    
    // other functions
    void display(){
      stroke(0);
      strokeWeight(1);
      fill(buttonColor);
      rect(buttonX, buttonY, buttonWidth, buttonHeight);
    }
};
