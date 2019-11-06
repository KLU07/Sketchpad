//VARIABLES
color plum = #C74C5E;
color candy = #FFB3B3;
color tangerine = #F8C475;
color sun = #FCE96F;
color teal = #A1DBB2;
color sky = #A9AFD9;
color lilac = #C46BAE;

color drawingColour = teal; //what colour has the user selected

float slider; //float = decimal number

float thickness;

int tool = 0;
// 0 = pen
// 1 = stamp

PImage img;

//===============================================================
void setup() {
  size (800,600);
  background(0); //black
  
  slider = 350;
  
  thickness = 2;
  
  img = loadImage("smily.png");
}

//================================================================
void draw() {
  println(mouseX, mouseY); //tells you coordinates of mouse 

  strokeWeight(2);

  
//RIGHT TOOLBAR  
  fill(0);
  rect(720,0,100,600); //x,y,w,l
  
  
//TOP TOOLBAR
  rect(0,520,800,80); 
  
  
//CLEAR CANVAS BUTTON

  if (mouseX > 730 && mouseX <790 && mouseY > 30 && mouseY < 70) {
     fill(#B7B1B1);
  }
  else {
     fill(0);
  }
  text("Clear",750,50); 
  rect(730,30,60,50); 
  
   
   
//INDICATOR
  if (drawingColour == plum) {
    fill(plum);
  }

  
 if (drawingColour == candy) {
    fill(candy);
  }

  
  if (drawingColour == tangerine) {
    fill(tangerine);
  }
 
  
  if (drawingColour == sun) {
    fill(sun);
  }

  
  if (drawingColour == teal) {
    fill(teal);
  }

  
  if (drawingColour == sky) {
    fill(sky);
  }
 
  
  if (drawingColour == lilac) {
    fill(lilac);

  } 
  
  if (tool == 1) {
    noFill();
    imageMode(CENTER);
    image(img,761,280,thickness*2,thickness*2);
    imageMode(CORNER);
  }
   stroke(0);
   ellipse(760,280,thickness*2.5,thickness*2.5);


//STAMP  
  image(img,440,537,50,50);

 
//PLUM BUTTON
  if (dist(40,560,mouseX,mouseY) < 25) {
      fill(#C66271);
  }  
  else {
    fill (plum);
  }   
  stroke(0);
  ellipse(40,560,50,50); //x,y,w,l
  
    
//CANDY BUTTON
  if (dist(100,560,mouseX,mouseY) < 25) {
      fill (#FFD8D8);
  }
  else {
    fill(candy);
  }
  ellipse(100,560,50,50);


//TANGERINE BUTTON
  if (dist(160,560,mouseX,mouseY) < 25) {
    fill(#F7D4A0);
  }
  else {
    fill(tangerine);
  } 
  ellipse(160,560,50,50);
  
  
//SUN BUTTON
  if (dist(220,560,mouseX,mouseY) < 25) {
    fill(#FAEFAE);
  }
  else {
    fill(sun);
  }
  ellipse(220,560,50,50);
  
  
//TEAL BUTTON
  if (dist(280,560,mouseX,mouseY) < 25) {
    fill(#C5DBCB);
  }
  else {
    fill(teal);
  }
  ellipse(280,560,50,50);
  
  
//SKY BUTTON
  if (dist(340,560,mouseX,mouseY) < 25) {
    fill(#BABED8);
  }
  else {
    fill(sky);
  }
  ellipse(340,560,50,50);
  
  
//LILAC BUTTON
  if (dist(400,560,mouseX,mouseY) < 25) {
    fill(#C47FB4);
  }
  else {
    fill(lilac);
  }
  ellipse(400,560,50,50);  
  

//DRAW LINE ON CANVAS
if(mousePressed && mouseX < 720 && mouseY < 520) {
   if (tool == 0) {
     stroke(drawingColour);
     strokeWeight(thickness);
     line(mouseX,mouseY,pmouseX,pmouseY); //pmouseX is where the mouse previously was
   }
    
   if (tool == 1) {
     imageMode(CENTER);
     image(img,pmouseX,pmouseY,thickness*10,thickness*10);
     imageMode(CORNER);
   }
   
}   
 
//SLIDER
  stroke(#FFFFFF);
  strokeWeight(3);
  line(760,340,760,480);
  
  fill(#050000);
  ellipse(760,slider,12,12);
  
  
  if (mousePressed) {
    if (dist(760,slider,mouseX,mouseY) < 30 ) {
      slider = mouseY;
    
      
      if (slider < 350) { //slider cannot go past minimun
        slider = 350;
      }
      
      if (slider > 470) {
        slider = 470;
      }
      
    }
  }
  
  
//ADJUST THICKNESS  
  thickness = map(slider,340,470,1,20); //if y=450 thickness=1, y=580 thickness=20


//TACTILE SLIDER KNOB
  if (dist(760,slider,mouseX,mouseY) <= 10 ) {
    fill(#B7B1B1);
  }
  else {
    stroke(#FFFFFF);
  }
  ellipse(760,slider,12,12);    
 
  
}


//===============================================================
void mouseReleased() { //this code runs after mouse has been clicked and released


//SELECT STAMP TOOL
  if (dist(440,537,mouseX,mouseY) <= 50) {
    tool = 1;
  }
  
  
//CHANGE DRAWING COLOUR
    if (dist(60,550,mouseX,mouseY) <= 25) {
    drawingColour = plum;
    tool = 0;
   }
  
  if (dist(100,550,mouseX,mouseY) <= 25) {
    drawingColour = candy;
    tool = 0;
  }
  
  if (dist(160,560,mouseX,mouseY) <= 25) {
    drawingColour = tangerine;
    tool = 0;
  }
  
  if (dist(220,560,mouseX,mouseY) <= 25) {
    drawingColour = sun;
    tool = 0;
  }
  
  if (dist(280,560,mouseX,mouseY) <= 25) {
    drawingColour = teal;
    tool = 0;
  }

  if (dist(340,560,mouseX,mouseY) <= 25) {
    drawingColour = sky;
    tool = 0;
  }  
  
  if (dist(400,560,mouseX,mouseY) <= 25) {
    drawingColour = lilac;
    tool = 0;
  }   
  
  
//CLEAR CANVAS BUTTON
  if (mouseX > 730 && mouseX < 790 && mouseY > 30 && mouseY < 70) {
    background(0);
  }
  

  
} 
