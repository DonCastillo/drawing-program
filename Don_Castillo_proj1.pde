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
  noStroke();

}


void draw(){
  if(mousePressed && mouseX > 100){
    fill(brushColor);
    strokeWeight(5);
    stroke(0, 0, 0, 30);
    line(mouseX, mouseY, pmouseX, pmouseY);
  } else {
    noStroke(); 
  }

  
}


void mousePressed(){


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
   setup();
}


/***********************
  @desc: displays all buttons
         buttons are 5px apart from each other
************************/

void displayButtons(){
  
  color black = color(0, 0, 0);
  color white = color(255, 255, 255);
  color red = color(255, 0, 0);
  color orange = color(255, 125, 0);
  color yellow = color(255, 255, 0);
  color springGreen = color(125, 255, 0);
  color green = color(0, 255, 0);
  color turquoise = color(0, 255, 125);
  color cyan = color(0, 255, 255);
  color ocean = color(0, 125, 255);
  color blue = color(0, 0, 255);
  color violet = color(125, 0, 255);
  color magenta = color(255, 0, 255);
  color raspberry = color(255, 0, 125);
  Button colorButton;
  
  int w = 40;
  int h = 40;
  int margin = 5;
  
  // create first column //////////////////////////////////
  color[] swatchesA = { red, orange, yellow, springGreen, green, turquoise, cyan, ocean, blue, violet }; 
  int posY = 10;
  int posX = 10;

    
  for(int i = 0; i < swatchesA.length; i++ ) {
      println("x: " + posX + " y: " + posY);
      colorButton = new Button(swatchesA[i], posX, posY, w, h);
      colorButton.display();
      posY = posY + h + margin;  
  }
  // create first column //////////////////////////////////
  
  // create second column //////////////////////////////////
  color[] swatchesB = { magenta, raspberry, black, white };
  posY = 10;
  posX = 10 + w + margin;
  for(int i = 0; i < swatchesB.length; i++ ) {
      println("x: " + posX + " y: " + posY);
      colorButton = new Button(swatchesB[i], posX, posY, w, h);
      colorButton.display();
      posY = posY + w + margin;  
  }
  
  // create second column //////////////////////////////////
  
  // 
    
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
