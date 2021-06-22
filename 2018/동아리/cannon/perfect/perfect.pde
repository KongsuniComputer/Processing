float vl = 12; float k = 0; float gv = 0.15; 

float seta = 0; 

float xBt, yBt; float sizebt = 50;

float bullet = 20;
float targetX = random(100,width-100); float targetY = random(0,height-100); float targetSize = random(7,50);

float headlength = 150;
float headweight = 25;

float check;
float pTargetX; float pTargetY;

boolean s;


void setup() {

  size(600,600);
  
  xBt = width * 9 / 10;
  yBt = height * 11 / 12;  
}

void shot() {
  fill(0,0,255);
  ellipse(headlength*cos(seta) + vl*k*cos(seta), height + headlength*-sin(seta) -(-0.5*gv*k*k + vl*k*sin(seta)), bullet, bullet);

  fill(100);
  ellipse(xBt,yBt,sizebt,sizebt);
  
  if(dist(mouseX, mouseY, xBt, yBt) < sizebt/2 && mousePressed) {

     s = true;
     
  }

  if(s) {
     k++;
  }

}

void mainframe() {

  strokeWeight(headweight);
  line(0, height, headlength * cos(seta), height + headlength * -sin(seta));  
  fill(0);
  strokeWeight(1);

}

void target() {
  fill(random(255),random(255),random(255));
  ellipse(targetX, targetY, targetSize, targetSize);
  
  if(dist(headlength*cos(seta) + vl*k*cos(seta), height + headlength*-sin(seta) -(-0.5*gv*k*k + vl*k*sin(seta)), targetX, targetY) < (bullet + targetSize)/2) {
    s = false;
    
    pTargetX = targetX;
    pTargetY = targetY;
    
    targetX = random(100, width - 50);
    targetY = random(0, height - 100);
    targetSize = random(7,50);
    
  }
  
  if(headlength*cos(seta) + vl*k*cos(seta) > width || height + headlength*-sin(seta) -(-0.5*gv*k*k + vl*k*sin(seta)) > height) {
 
    s = false;
   
  }
  
  if(!s) {
    
    k = 0;
    
  }
  
}

void draw() {
  
  background(255);
  
  shot();
  mainframe();
  target();
  
}

void mouseDragged() {
  if(!s) {
    if(mouseY > pmouseY) {
      seta -= radians(0.5);
      
    }
    
    if(mouseY < pmouseY) {
      seta += radians(0.5);
      
    }
    seta = constrain(seta,0,HALF_PI);
  }
}
