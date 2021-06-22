//You have to change value of each variable.
//Refer to papers for details.


float x = 00; //position of x
float y = 200; //position of y

float vlx = 10; //velocity of x
float vly = -10; //velocity of y

float acx = 0; //acceleration of x
float acy = 1; //acceleration of y

float t = 0;

void Gongi_umjigigo_isseoyo(){
  
  vlx = vlx + (t * acx);
  vly = vly + (t * acy);
  
  x = x + vlx;
  y = y + vly;
  
  fill(0);
  ellipse(x, y, 10, 10);
  
}

void setup(){
  size(400, 400);
  
  background(255); 
}

void draw(){
  Gongi_umjigigo_isseoyo();
  
  t++;
  
  delay(100);
}
