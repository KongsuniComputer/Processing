 void setup() { 
   size(800, 800); //window size
   background(255);  //background colour
   fill(255);
   //frameRate(100);
} 

 
void draw() {
    
  float x = width; //initial x value 
  float y = height; //initial y value
  
  int j; //for~ loop variable
  int r = 3; //random pick 3 sector
  
  float v;
  
  point(width/2,0); //draw initial cp0
  point(0,height); //draw initial cp1
  point(width, height); //draw initial cp2
    
  for (j = 0; j < 100; j++) {        //loop
  
    /*
    switch((int)random(r)) //choose case1 or case2 or case3 randomly
     {
     case 0: x = (0+x)/2; y = (height+y)/2; 
       break; 
     case 1: x = (width+x)/2; y = (height+y)/2; 
       break; 
     case 2: x = (width/2+x)/2; y = (0+y)/2;
       break;
     }
     */
     
    v = (int)random(r); 
    if(v<1){
    x=x/2+200;
    y=y/2;
    }
    else if(v<2){
    x=x/2;
    y=y/2+400;
    }
    
    else if(v<3){
    x=x/2+400;
    y=y/2+400;
    }
     
  point(x, y); //draw point that was calculated in switch ~ case ~ or if ~ else ~
   
   } 
   
 } //end