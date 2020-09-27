/***********************
  Don Castillo, NMED 3380 B
  Project 1: Drawing Program
  Last Modified: 9/26 
************************/

// canvas variables
color canvasColor;

// brush variables
color brushColor;
int brushOpacity;
int brushWeight;

// set color palettes
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


void setup(){
  size(800, 600);
  
  // set default values
  canvasColor = color(255, 255, 255, 255);      
  brushOpacity = 255;
  brushWeight = 10;
  brushColor = color(0, 0, 0, brushOpacity);             
  
  background(canvasColor);
  displayButtons();
  noStroke();
}


void draw(){
  if(mousePressed && mouseX > 100){
    fill(brushColor);
    strokeWeight(brushWeight);
    stroke(brushColor, brushOpacity);
    line(mouseX, mouseY, pmouseX, pmouseY);
  } else {
    noStroke(); 
  }
  
  
  
}

void mousePressed(){
  
  println("mouseX: " + mouseX + " mouseY: " + mouseY);

  
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 10 && mouseY <= 50) ){
    brushColor = red;
  } 
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 55 && mouseY <= 95) ){
    brushColor = orange;
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 100 && mouseY <= 140) ){
    brushColor = yellow;
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 145 && mouseY <= 185) ){
    brushColor = springGreen;
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 190 && mouseY <= 230) ){
    brushColor = green;
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 235 && mouseY <= 275) ){
    brushColor = turquoise;
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 280 && mouseY <= 320) ){
    brushColor = cyan;
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 325 && mouseY <= 365) ){
    brushColor = ocean;
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 370 && mouseY <= 410) ){
    brushColor = blue;
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 415 && mouseY <= 455) ){
    brushColor = violet;
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 10 && mouseY <= 50) ){
    brushColor = magenta;
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 55 && mouseY <= 95) ){
    brushColor = raspberry;
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 100 && mouseY <= 140) ){
    brushColor = black;
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 145 && mouseY <= 185) ){
    brushColor = white;
  }
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
  switch(keyCode){
    case UP:
      println("UP");
      updateBrushWeight(+2);
      break;
    case DOWN:
      println("DOWN");
      updateBrushWeight(-2);
      break;
    case LEFT:
      println("LEFT");
      updateBrushOpacity(-25);
      break;
    case RIGHT:
      println("RIGHT");
      updateBrushOpacity(+25);
      break;
  }
}


void reset(){
   setup();
}

void updateBrushWeight(int adder){
    int min = 2, max = 20;
    int tempWeight = brushWeight + adder;
    if(tempWeight >= min && tempWeight <= max){
      brushWeight = tempWeight;
    } else {
      println("Brush Weight out of range!");
    }
    println(brushWeight);
}

void updateBrushOpacity(int adder){
    int min = 30, max = 255;
    int tempOpacity = brushOpacity + adder;
    if(tempOpacity >= min && tempOpacity <= max){
      brushOpacity = tempOpacity;
    } else {
      println("Brush Opacity out of range!");
    }
    println(brushOpacity);
}



/***********************
  @desc: displays all buttons
         buttons are 5px apart from each other
************************/

void displayButtons(){
  
  Button colorButton;
  
  int w = 40;
  int h = 40;
  int margin = 5;
  
  // create first column //////////////////////////////////
  color[] swatchesA = { red, orange, yellow, springGreen, green, turquoise, cyan, ocean, blue, violet }; 
  int posY = 10;
  int posX = 10;
  int counter = 1;
    
  for(int i = 0; i < swatchesA.length; i++ ) {
      println("#" + counter + " x: " + posX + " y: " + posY + " w: " + w + " h: " + h);
      colorButton = new Button(swatchesA[i], posX, posY, w, h);
      colorButton.display();
      posY = posY + h + margin;
      counter++;
  }
  // create first column //////////////////////////////////
  
  // create second column //////////////////////////////////
  color[] swatchesB = { magenta, raspberry, black, white };
  posY = 10;
  posX = 10 + w + margin;
  for(int i = 0; i < swatchesB.length; i++ ) {
      println("#" + counter + " x: " + posX + " y: " + posY + " w: " + w + " h: " + h);
      colorButton = new Button(swatchesB[i], posX, posY, w, h);
      colorButton.display();
      posY = posY + w + margin;  
      counter++;
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
