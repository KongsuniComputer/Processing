float r = 50;
float phi = 0;
float x, y;

void setup() {
  size(500, 100);
  
}

void draw() {
  phi += 0.01;
  x = r*(phi - sin(phi));
  x *= .5; 
  y = r*(1 - cos(phi));
  y = height - y;
  point(x, y);
}
