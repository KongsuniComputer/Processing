float angle = 0.0; 
float r = 100.0;
float x, y;
void setup() {  
  size(400, 400);
}

void draw() { 
background(128);
x = 10 + r * cos(angle * PI / 180); 
y = 290 - r * sin(angle * PI / 180); 
line(10, 290, x, y);
}

void mouseDragged() { 
if (mouseY < pmouseY) 
{    
  angle++;
    if (angle > 90) {
    angle = 90.0;    
  }  
}  
  else {    
  angle--;  
    if (angle < 0.0) {  
      angle = 0.0; 
    }  
  }
}