float t1, t2, t3, t4, ex, ey;

void setup()
{
  size(600, 600);
  background(255); 
  //frameRate(100);
}

void draw()
{

    fill(255,51,153);
    ellipse(300, 300, 150, 150);
    
    t1 = t1 + TWO_PI/720;
    t2 = t2 + TWO_PI/90;
    
   
   
    ex = 300 + 200*cos(t1) + 20*cos(t2);
    ey = 300 - 200*sin(t1) - 20*sin(t2);
   
    fill(255,255,0);
    ellipse(ex, ey, 8,8);
    
  
    
     
  }
    
  