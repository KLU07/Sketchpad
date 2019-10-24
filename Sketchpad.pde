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

//===============================================================
void setup() {
  size (800,600);
  background(0); //black
  
  slider = 350;
  
  thickness = 2;
}

//================================================================
void draw() {
  println(mouseX, mouseY); //tells you coordinates of mouse 

  strokeWeight(2);


//RIGHT TOOLBAR  
  rect(720,0,100,600); //x,y,w,l
  
  
//TOP TOOLBAR
  rect(0,520,800,80);  
  
  
//CLEAR CANVAS BUTTON
  rect(730,30,60,50);
  
  
//SAVE BUTTON
  rect(730,100,60,50);
  
//PLUM BUTTON
  if ( dist(40,560,mouseX,mouseY) < 25) {
      fill(#B44556);
  }  
  else {
    fill (plum);
  }   
  stroke(0);
  ellipse(40,560,50,50); //x,y,w,l
  
    
//CANDY BUTTON
  if (dist(100,560,mouseX,mouseY) < 25) {
      fill (#F0A9A9);
  }
  else {
    fill(candy);
  }
  ellipse(100,560,50,50);


//TANGERINE BUTTON
  if (dist(160,560,mouseX,mouseY) < 25) {
    fill(#E8B76E);
  }
  else {
    fill(tangerine);
  } 
  ellipse(160,560,50,50);
  
  
//SUN BUTTON
  if (dist(220,560,mouseX,mouseY) < 25) {
    fill(#E8D567);
  }
  else {
    fill(sun);
  }
  ellipse(220,560,50,50);
  
  
//TEAL BUTTON
  if (dist(280,560,mouseX,mouseY) < 25) {
    fill(#8EC19D);
  }
  else {
    fill(teal);
  }
  ellipse(280,560,50,50);
  
  
//SKY BUTTON
  if (dist(340,560,mouseX,mouseY) < 25) {
    fill(#949ABC);
  }
  else {
    fill(sky);
  }
  ellipse(340,560,50,50);
  
  
//LILAC BUTTON
  if (dist(400,560,mouseX,mouseY) < 25) {
    fill(#A75D96);
  }
  else {
    fill(lilac);
  }
  ellipse(400,560,50,50);  
  

//DRAW LINE ON CANVAS
   stroke(drawingColour);
   strokeWeight(thickness);
    if (mousePressed) {
      line(mouseX,mouseY,pmouseX,pmouseY); //pmouseX is where the mouse previously was
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

}


//===============================================================
void mouseReleased() { //this code runs after mouse has been clicked and released
  
//CHANGE DRAWING COLOUR
    if (dist(60,550,mouseX,mouseY) <= 25) {
    drawingColour = plum;
   }
  
  if (dist(100,550,mouseX,mouseY) <= 25) {
    drawingColour = candy;
  }
  
  if (dist(160,560,mouseX,mouseY) <= 25) {
    drawingColour = tangerine;
  }
  
  if (dist(220,560,mouseX,mouseY) <= 25) {
    drawingColour = sun;
  }
  
  if (dist(280,560,mouseX,mouseY) <= 25) {
    drawingColour = teal;
  }

  if (dist(340,560,mouseX,mouseY) <= 25) {
    drawingColour = sky;
  }  
  
  if (dist(400,560,mouseX,mouseY) <= 25) {
    drawingColour = lilac;
  }   
  
  
//CLEAR CANVAS BUTTON
  if (mouseX > 730 && mouseX < 790 && mouseY > 30 && mouseY < 70) {
    background(0);
  }
  

//SAVE BUTTON
  
  
  
} 
