float x, y, speedX, speedY;
float diam = 20;
float rectSize = 200;

float py1 = rectSize/2, py2 = rectSize/2;
char value;

void setup() {
  fullScreen();

  reset();
}

void reset() {
  x = width/2;
  y = height/2;
  speedX = random(3, 4);
  speedY = random(4, 3);
}

void draw() { 
  background(0);
  
  fill(250, 250, 210);
  ellipse(x, y, diam, diam);
  
  fill(0,0,250);
  rect(width-30, mouseY-rectSize/2, 10, rectSize);
  
  fill(250,0,0);
  rect(20, mouseY-rectSize/2, 10, rectSize);
  

  x += speedX ;
  y += speedY ;

  if ( x > width-40 && x < width-20 && y > mouseY-rectSize/2 && y < mouseY+rectSize/2 ) 
  {
    speedX = speedX * -1.1;
  }
  
  if ( x < 40 && x > 20 && y > mouseY-rectSize/2 && y < mouseY+rectSize/2 ) 
  {
    speedX = speedX * -1.1;
  } 
  
  if ( y > height || y < 0 ) {
    speedY *= -1;
  }
}

void mousePressed() {
 reset();
}