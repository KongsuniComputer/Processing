float x1, y1, x2, y2, speedX1, speedY1,speedX2, speedY2;
float diam = 20;
float rectSize = 200;

float py1 = rectSize/2, py2 = rectSize/2;
char value;

void setup() {
  fullScreen();

  reset();
}

void reset() {
  x1 = width/1.5;
  y1 = height/2;
  //x2 = width/2.5;
  //y2 = height/2;
  speedX1 = random(13, 19);
  speedY1 = random(14, 13);
  //speedX2 = random(18, 12);
  //speedY2 = random(13, 16);
}

void draw() { 
  background(0);
  
  fill(250, 250, 210);
  ellipse(x1, y1, diam, diam);
  
  fill(250, 250, 210);
  ellipse(x2, y2, diam, diam);
  
  fill(0,0,250);
  rect(width-30, mouseY-rectSize/2, 10, rectSize);
  
  fill(250,0,0);
  rect(20, mouseY-rectSize/2, 10, rectSize);
  

  x1 += speedX1 ;
  y1 += speedY1 ;
  x2 += speedX2 ;
  y2 += speedY2 ;


  if ( x1 > width-40 && x1 < width-20 && y1 > mouseY-rectSize/2 && y1 < mouseY+rectSize/2 ) 
  {
    speedX1 = speedX1 * -1.0;
  }
  
  if ( x1 < 40 && x1 > 20 && y1 > mouseY-rectSize/2 && y1 < mouseY+rectSize/2 ) 
  {
    speedX1 = speedX1 * -1.0;
  } 
  
  if ( y1 > height || y1 < 0 ) {
    speedY1 *= -1;
  }
  
  if ( x2 > width-40 && x2 < width-20 && y2 > mouseY-rectSize/2 && y2 < mouseY+rectSize/2 ) 
  {
    speedX2 = speedX2 * -1.0;
  }
  
  if ( x2 < 40 && x2 > 20 && y2 > mouseY-rectSize/2 && y2 < mouseY+rectSize/2 ) 
  {
    speedX2 = speedX2 * -1.0;
  } 
  
  if ( y2 > height || y2 < 0 ) {
    speedY2 *= -1;
  }
}

void mousePressed() {
 reset();
}