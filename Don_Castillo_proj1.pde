/***********************
  Don Castillo, NMED 3380 B
  Project 1: Drawing Program
  Last Modified: 9/27 
************************/


/***********************
@desc: Global Variables
************************/

// window color
color canvasColor;

// width of the palette, this sets which area of the canvas is drawable
int paletteBarWidth;

// determines if the mirroring functionality is enabled or not
boolean mirroring;

// sets an empty brush object
Brush brush;

// sets standard color schemes based off of the color wheel
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
color gray = color(128, 128, 128);



/***********************
@desc: Sets the default settings of the drawing program  
************************/
void setup()
{
  // sets the width and height of the window
  size(1000, 600);
  
  // sets the width of the palette bar
  // this separates the color palette bar and the drawing area
  paletteBarWidth = 120;
  
  // initially disables the mirroring functionality
  mirroring = false;
  
  // set default color of the canvas or window
  canvasColor = color(255, 255, 255, 255); 
  background(canvasColor);
  
  // initializes the bursh object
  // color, weight, opacity, type
  brush = new Brush(black, 2, 255, "REGULAR");
}



/***********************
@desc: Add elements to the drawing area  
************************/
void draw()
{
  // displays buttons or the palette bar. 
  // This is invoked in the draw() instead of setup() so that it repetitvely covers the previous 
  // buttons which creates an impression that the brush cannot draw anything above it
  displayButtons();
  
  // allows brush to draw on the canvas if the mouse is pressed and if mouseX is greater than the width of the palette bar.
  if(mousePressed && mouseX > paletteBarWidth){
    
    // change mouse pointer to cross
    cursor(CROSS);
    
    // set fill to the current color and opacity of the brush
    fill(brush.bColor, brush.opacity);
    
    // set weight of the stroke to the current weight of the brush
    strokeWeight(brush.weight);
    
    // set the stroke to the current color and opacity of the brush
    stroke(brush.bColor, brush.opacity);
    
    // use the brush
    brush.use(mirroring);
  }
  else if(mouseX > 100){
    // change the mouse pointer to cross even if the brush is not pressed
    cursor(CROSS);
  }
  else {
    // draw nothing
    noStroke(); 
    noFill();
  }
}




/***********************
@desc: Change brush settings depending on which button on the palette bar is pressed
       These buttons change the color and the shape of the brush
       Change mouse pointer to hand to create an impression that a button is being pressed
************************/
void mousePressed()
{
  
  //println("mouseX: " + mouseX + " mouseY: " + mouseY);

  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 10 && mouseY <= 50) ){
    brush.bColor = red;
    cursor(HAND);
  } 
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 55 && mouseY <= 95) ){
    brush.bColor = orange;
    cursor(HAND);
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 100 && mouseY <= 140) ){
    brush.bColor = yellow;
    cursor(HAND);
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 145 && mouseY <= 185) ){
    brush.bColor = springGreen;
    cursor(HAND);
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 190 && mouseY <= 230) ){
    brush.bColor = green;
    cursor(HAND);
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 235 && mouseY <= 275) ){
    brush.bColor = turquoise;
    cursor(HAND);
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 280 && mouseY <= 320) ){
    brush.bColor = cyan;
    cursor(HAND);
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 325 && mouseY <= 365) ){
    brush.bColor = ocean;
    cursor(HAND);
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 370 && mouseY <= 410) ){
    brush.bColor = blue;
    cursor(HAND);
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 415 && mouseY <= 455) ){
    brush.bColor = violet;
    cursor(HAND);
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 10 && mouseY <= 50) ){
    brush.bColor = magenta;
    cursor(HAND);
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 55 && mouseY <= 95) ){
    brush.bColor = raspberry;
    cursor(HAND);
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 100 && mouseY <= 140) ){
    brush.bColor = black;
    cursor(HAND);
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 145 && mouseY <= 185) ){
    brush.bColor = white;
    cursor(HAND);
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 190 && mouseY <= 230) ){
    brush.type = "REGULAR";
    cursor(HAND);
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 235 && mouseY <= 275) ){
    brush.type = "AIR";
    cursor(HAND);
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 280 && mouseY <= 320) ){
    brush.type = "ARROW";
    cursor(HAND);
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 325 && mouseY <= 365) ){
    brush.type = "CIRCLE";
    cursor(HAND);
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 370 && mouseY <= 410) ){
    brush.type = "SQUARE";
    cursor(HAND);
  }
}


/***********************
@desc: Change the mouse pointer to hand when it hovers above any buttons
************************/
void mouseMoved()
{
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 10 && mouseY <= 50) ){
    cursor(HAND);
  } 
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 55 && mouseY <= 95) ){
   cursor(HAND);
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 100 && mouseY <= 140) ){
    cursor(HAND);
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 145 && mouseY <= 185) ){
    cursor(HAND);
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 190 && mouseY <= 230) ){
    cursor(HAND);
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 235 && mouseY <= 275) ){
    cursor(HAND);
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 280 && mouseY <= 320) ){
    cursor(HAND);
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 325 && mouseY <= 365) ){
    cursor(HAND);
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 370 && mouseY <= 410) ){
    cursor(HAND);
  }
  if( (mouseX >= 10 && mouseX <= 50) && (mouseY >= 415 && mouseY <= 455) ){
    cursor(HAND);
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 10 && mouseY <= 50) ){
    cursor(HAND);
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 55 && mouseY <= 95) ){
    cursor(HAND);
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 100 && mouseY <= 140) ){
    cursor(HAND);
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 145 && mouseY <= 185) ){
    cursor(HAND);
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 190 && mouseY <= 230) ){
    cursor(HAND);
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 235 && mouseY <= 275) ){
    cursor(HAND);
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 280 && mouseY <= 320) ){
    cursor(HAND);
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 325 && mouseY <= 365) ){
    cursor(HAND);
  }
  if( (mouseX >= 55 && mouseX <= 95) && (mouseY >= 370 && mouseY <= 410) ){
    cursor(HAND);
  }
}


/***********************
@desc: Invokes a function depending on which key is pressed
************************/
void keyPressed()
{
  if(key == CODED){
      switch(keyCode){
      case UP:
        // add brush weight or size by 2
        brush.changeWeight(+2);
        break;
      case DOWN:
        // reduce brush weight or size by 2
        brush.changeWeight(-2);
        break;
      case LEFT:
        // reduce brush opacity by 25
        brush.changeOpacity(-25);
        break;
      case RIGHT:
        // add brush opacity by 25
        brush.changeOpacity(+25);
        break;
      default:
        break;
      }
  } 
  else{
      switch(key){
        case 'c':
        case 'C':
          // clears the drawing area when 'c' is pressed
          reset();
          break;
        case 's':
        case 'S':
          // saves the drawing when 's' is pressed
          saveDrawing();
          break;
        case 'm':
        case 'M':
          // toggles mirroring when 'm' is pressed
          if(mirroring == true)
            mirroring = false;
          else
            mirroring = true;
        default:
          break;
      }
  }
}



/***********************
@desc: Clears the drawing area
************************/
void reset()
{
   background(canvasColor);
   displayButtons();
}



/***********************
@desc: Format date number.
       If the number is less than 10, prepend a zero to it. Ex: 9 => 09
       Else retain the number as is
@params:  date number, ex: month, day, hour, min, sec
@returns:  String value of the number
************************/
String formatDate(int date)
{
  if(date < 10){
    return "0" + String.valueOf(date);
  } 
  return String.valueOf(date);
}



/***********************
@desc: Saves the drawing to a .PNG file
       File naming convention: year-month-day-hourminutesecond-drawing.png
       File naming convention prevents previous drawing/image from being overwritten 
************************/
void saveDrawing()
{
  int day = day();
  int month = month();
  int year = year();
  int hour = hour();
  int min = minute();
  int sec = second();
  save(year + "-" + formatDate(month) + "-" + formatDate(day) + "-" + formatDate(hour) + formatDate(min) + formatDate(sec) + "-drawing.png");
}



/***********************
@desc: Displays all buttons
************************/

void displayButtons()
{
  
  Button colorButton;
  
  // height and width of the button
  int w = 40;
  int h = 40;
  
  // how far each button is from each other
  int margin = 5;
  
  // put a white background below the palettes
  fill(white);
  noStroke();
  rectMode(CORNER);
  rect(0, 0, paletteBarWidth, height);
  
  /*********************** create first column */
      // button colors on the first column of the palette bar
      color[] swatchesA = { red, orange, yellow, springGreen, green, turquoise, cyan, ocean, blue, violet }; 
      
      // initial x,y coors of the first button
      int posY = 10;
      int posX = 10;
      int counter = 1;
        
      // iterate through the array of colors and create a buttons out of it
      for(int i = 0; i < swatchesA.length; i++ ) {
          //println("#" + counter + " x: " + posX + " y: " + posY + " w: " + w + " h: " + h);
          // create a button obj with specified colors, positioning, and size
          colorButton = new Button(swatchesA[i], posX, posY, w, h);
          
          // display button
          colorButton.display();
          
          // update posY to set y-coor of the next button
          posY = posY + h + margin;
          counter++;
      }

  
  /*********************** create second column */
      color[] swatchesB = { magenta, raspberry, black, white, gray, gray, gray, gray, gray };
      posY = 10;
      posX = 10 + w + margin;
      for(int i = 0; i < swatchesB.length; i++ ) {
          println("#" + counter + " x: " + posX + " y: " + posY + " w: " + w + " h: " + h);
          colorButton = new Button(swatchesB[i], posX, posY, w, h);
          colorButton.display();
          posY = posY + w + margin;  
          counter++;
      }
  
      // Draw button symbols
      strokeWeight(3);
      stroke(white);
      noFill();
      
      // REGULAR BRUSH SYMBOL
      bezier(88, 196, 84, 209, 67, 208, 61, 218);
      
      // AIR BRUSH SYMBOL
      point(74, 254);
      point(74, 254 + 10);
      point(74, 254 - 10);
      point(74 + 10, 254);
      point(74 - 10, 254);
      point(74 - 5, 254 - 5);
      point(74 + 5, 254 + 5);
      point(74 - 5, 254 + 5);
      point(74 + 5, 254 - 5);
      
      // ARROW BRUSH SYMBOL
      line(81, 288, 68, 300);
      line(83, 305, 68, 300);
      
      // CIRCLE BRUSH SYMBOL
      fill(white);
      stroke(black);
      circle(74, 345, 20);
      
      // SQUARE BRUSH SYMBOL
      rectMode(CENTER);
      rect(74, 390, 20, 20);
}



/***********************
@dec: Brush Class
************************/
class Brush 
{
  color bColor;
  int opacity, weight;
  String type;
  
  /***********************
  @desc: Creates brush object, initializes brush object specs
  @params: Color, weight, opacity, type
  ************************/
  Brush(color pBColor, int pWeight, int pOpacity, String pType)
  {
    weight = pWeight;
    opacity = pOpacity;
    bColor = pBColor;
    type = pType;
  }
  
  /***********************
  @desc: Use brush depending on its type.
         Types of brushes: REGULAR, AIR, ARROW, CIRCLE, SQUARE
  @params: mirroring
           If mirroring is true, draw the mirrored version of the element drawn
           Else draw the element without the mirrored version
  ************************/
  void use(boolean pMirroring)
  {
    
    switch(type){
      
      case "REGULAR": 
          line(mouseX, mouseY, pmouseX, pmouseY);
          
          if(pMirroring){
            line(width + paletteBarWidth - mouseX, height - mouseY, width + paletteBarWidth - pmouseX, height - pmouseY);
          }
          break;
      
      case "AIR": 
          point(mouseX, mouseY);
          point(mouseX+10, mouseY+10);
          point(mouseX-10, mouseY-10);
          point(mouseX+10, mouseY-10);
          point(mouseX-10, mouseY+10);
          point(mouseX, mouseY+20);
          point(mouseX, mouseY-20);
          point(mouseX+20, mouseY);
          point(mouseX-20, mouseY);
          
          if(pMirroring){
            point(width + paletteBarWidth - mouseX, height - mouseY);
            point(width + paletteBarWidth - mouseX + 10, height - mouseY + 10);
            point(width + paletteBarWidth - mouseX - 10, height - mouseY - 10);
            point(width + paletteBarWidth - mouseX + 10, height - mouseY - 10);
            point(width + paletteBarWidth - mouseX - 10, height - mouseY + 10);
            point(width + paletteBarWidth - mouseX, height - mouseY + 20);
            point(width + paletteBarWidth - mouseX, height - mouseY - 20);
            point(width + paletteBarWidth - mouseX + 20, height - mouseY);
            point(width + paletteBarWidth - mouseX - 20, height - mouseY); 
          }
          break;
          
      case "ARROW":
          line(mouseX, mouseY, pmouseX+5, pmouseY+5);
          line(mouseX, mouseY, pmouseX-5, pmouseY-5);
          
          if(pMirroring){
            line(width + paletteBarWidth - mouseX, height - mouseY, width + paletteBarWidth - pmouseX + 5, height - pmouseY + 5);
            line(width + paletteBarWidth - mouseX, height - mouseY, width + paletteBarWidth - pmouseX - 5, height - pmouseY - 5);
          }
          break;
          
      case "CIRCLE":
          noStroke();
          fill(bColor, opacity);
          circle(mouseX, mouseY, weight * 5);
          
          if(pMirroring){
            circle(width + paletteBarWidth - mouseX, height - mouseY, weight * 5);
          }
          
          break;
          
      case "SQUARE":
          noStroke();
          fill(bColor, opacity);
          rectMode(CENTER);
          rect(mouseX, mouseY, weight * 5, weight * 5);
          
          if(pMirroring){
            rect(width + paletteBarWidth - mouseX, height - mouseY, weight * 5, weight * 5);
          }
          
          break; 
          
      default:
          line(mouseX, mouseY, pmouseX, pmouseY);
          break;
    }     
  }
  
  
  /***********************
  @desc: Update the current opacity of the brush
  @params: adder
           negative adder is subtracted from the current value of the brush's opacity
           positive adder is added from the current value of the brush's opacity
  ************************/
  void changeOpacity(int adder)
  {
      int min = 5, max = 255;
      int tempOpacity = opacity + adder;
      if(tempOpacity >= min && tempOpacity <= max){
        opacity = tempOpacity;
      } else {
        println("Brush Opacity out of range!");
      }
      println(opacity);
  }
  
  /***********************
  @desc: Update the current weight of the brush
  @params: adder
           negative adder is subtracted from the current value of the brush's weight
           positive adder is added from the current value of the brush's weight
  ************************/
  void changeWeight(int adder)
  {
      int min = 2, max = 20;
      int tempWeight = weight + adder;
      if(tempWeight >= min && tempWeight <= max){
        weight = tempWeight;
      } else {
        println("Brush Weight out of range!");
      }
      println(weight);
  }  
};






/***********************
@desc: Button Class
************************/
class Button {
    color buttonColor;
    int buttonX, buttonY;
    int buttonWidth, buttonHeight;
    
    /***********************
    @desc: Creates button object, initializes button object specs
    @params: Color, x-coor, y-coor, width, height
    ************************/
    Button(color pButtonColor, int pButtonX, int pButtonY, int pButtonWidth, int pButtonHeight)
    {
        buttonColor = pButtonColor;
        buttonX = pButtonX;
        buttonY = pButtonY;
        buttonWidth = pButtonWidth;
        buttonHeight = pButtonHeight;
    }
    
    /***********************
    @desc: Displays button object on the window
    ************************/
    void display()
    {
      stroke(0);
      strokeWeight(1);
      fill(buttonColor);
      rectMode(CORNER);
      rect(buttonX, buttonY, buttonWidth, buttonHeight);
    }
};
