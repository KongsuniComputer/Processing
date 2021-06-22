function setup() {
  createCanvas(windowWidth, windowHeight);
  frameRate(60);
}
var targethit1 = false; //A whole bunch of variables
var targethit2 = false;
var targethit3 = false;
var targethit4 = false;
var multifire = false;
var showpath = false;
var targetsize = 100;
var not_fired_yet = false;
var on_screen=false;
var r = 1;
var fire = 0;
var powerspawn = 0;
var counter = 0;
var counter2 = 0;
var counter3 = 0;
var counter4 = 200000;
var v = 90;
var allowRmovement = true;
var targetx = 800;
var targety = 500;
var powerx = 600;
var powery = 200;
var score = 0;
var powerhit = false;
var powerhit1 = false;
var powerhit2 = false;
var powerhit3 = false;
var powerhit4 = false;

function draw() {
var powerspawner = random(0,1800);
var cannony = -1*((1/(tan(r)))*((v/5)*counter2-(counter*(v/5)))-4.9*((((v/5)*counter2-(counter*(v/5)))/(v*(sin(r))))*(((v/5)*counter2-(counter*(v/5)))/(v*sin(r)))))-2+(windowHeight-(windowHeight/5))-25
var cannonx = ((v/5)*counter2-(counter*(v/5)))+windowWidth/10
var menu = 0
var s = 60-(counter3/60);
var click = false;
var vmax = width/10-1; //end of the giant bunch of variables
if(s < 0){
  s =0;
}
if(frameCount){
counter4 += 1; //add 1 to the variable each frame
}
if(round(s) === 0){
  menu = 1      //if the timer variable runs out, change to the score/try again screen
}
if(menu === 0){
counter3 +=1;    //another counter
}
if (mouseIsPressed) {
    if (mouseButton === LEFT) {
      click = true;      //variable for the button in the score menu
    }
}
  
background(200, 200, 255);
  fill(0);    

  
strokeWeight(1);    
fill(100,150,100);
rect(0,2*height/3,width,height/3); //the grass underneath cannon
var a = random([windowWidth/2],[windowWidth]);
var b = random ([0],[height]);  

  if (cannonx >= width) {
    counter2 = 0;
    fire = 0;
    counter = 0;              //if cannonball goes offscreen, reset cannon
  }  
  if (cannony >= height) {
    counter2 = 0;
    fire = 0;
    counter = 0;
  }  
  

if(targetx <= width/3){
  targetx = width/2
}
if(targetx >= 7*width/8){
  targetx = width/2
}                                //keeps target from going offscreen
if(targety >= height){
  targety = height/2
}
  if(targety <= 0){
  targety = height/2
}


  
var powerupdecide = random(3,7); 
  powerx = 5*counter4;            //path for powerup
powery = 50*sin(5*counter4*0.01);
if(round(powerspawner) === 1799)  {
  powerspawn = 1
  counter4 = 0
}
  
  //collision detection for the powerup
  
powerhit = collideRectCircle(powerx,powery+(height/3),30,30,((v/5)*counter2-(counter*(v/5)))+windowWidth/10,-1*((1/(tan(r)))*((v/5)*counter2-(counter*(v/5)))-4.9*((((v/5)*counter2-(counter*(v/5)))/(v*(sin(r))))*(((v/5)*counter2-(counter*(v/5)))/(v*sin(r)))))-2+(windowHeight-(windowHeight/5))-25,50);  
if(multifire === true){ //if the multifire powerup is on, collision detection for those
powerhit1 = collideRectCircle(powerx,powery+(height/3),30,30,((v/5)*counter2-(counter*(v/5)))+windowWidth/10,-1*((1/(tan(r)))*((v/5)*counter2-(counter*(v/5)))-4.9*((((v/5)*counter2-(counter*(v/5)))/(v*(sin(r))))*(((v/5)*counter2-(counter*(v/5)))/(v*sin(r)))))-2+(windowHeight-(windowHeight/5))-25+25,50);  
powerhit2 = collideRectCircle(powerx,powery+(height/3),30,30,((v/5)*counter2-(counter*(v/5)))+windowWidth/10,-1*((1/(tan(r)))*((v/5)*counter2-(counter*(v/5)))-4.9*((((v/5)*counter2-(counter*(v/5)))/(v*(sin(r))))*(((v/5)*counter2-(counter*(v/5)))/(v*sin(r)))))-2+(windowHeight-(windowHeight/5))-25+50,50);  
powerhit3 = collideRectCircle(powerx,powery+(height/3),30,30,((v/5)*counter2-(counter*(v/5)))+windowWidth/10,-1*((1/(tan(r)))*((v/5)*counter2-(counter*(v/5)))-4.9*((((v/5)*counter2-(counter*(v/5)))/(v*(sin(r))))*(((v/5)*counter2-(counter*(v/5)))/(v*sin(r)))))-2+(windowHeight-(windowHeight/5))-25-25,50);  
powerhit4 = collideRectCircle(powerx,powery+(height/3),30,30,((v/5)*counter2-(counter*(v/5)))+windowWidth/10,-1*((1/(tan(r)))*((v/5)*counter2-(counter*(v/5)))-4.9*((((v/5)*counter2-(counter*(v/5)))/(v*(sin(r))))*(((v/5)*counter2-(counter*(v/5)))/(v*sin(r)))))-2+(windowHeight-(windowHeight/5))-25-50,50);  
}  
if(5*counter4 <= width){
  powerspawn = 1
}
if(powerspawn === 1){  //spawn in powerup
  fill(255,127.5*sin(frameCount*0.05)+127.5,127.5*sin(-frameCount*0.05)+127.5); //make powerup color change from yellow to purple and back
rect(powerx,powery+(height/3),30,30);  
}
if(powerhit === true){
  powerspawn = 0;
  counter4 = 2000000;    //if the powerup is hit, translate WAY TO THE RIGHT
}
  if(powerhit1 === true){
  powerspawn = 0;
  counter4 = 2000000;
}
  
if(powerhit2 === true){
  powerspawn = 0;
  counter4 = 2000000;
}
  
  if(powerhit3 === true){
  powerspawn = 0;
  counter4 = 2000000;
}
if(powerhit4 === true){
  powerspawn = 0;
  counter4 = 2000000;
}

if(powerhit){
  if(round(powerupdecide) === 1){}
  if(round(powerupdecide) === 2){}      
  if(round(powerupdecide) === 3){score += 5;} //add 5 to score variable
  if(round(powerupdecide) === 4){showpath = true;} //show path of cannonball
  if(round(powerupdecide) === 5){targetsize = targetsize*2} //double size of cannonball
  if(round(powerupdecide) === 6){counter3 -= 15*60} //give 15 seconds
  if(round(powerupdecide) === 7){multifire = true;} //shoot 5 cannonballs at once
}  
  
  //collision detection for targets
targethit = collideCircleCircle(((v/5)*counter2-(counter*(v/5)))+windowWidth/10,-1*((1/(tan(r)))*((v/5)*counter2-(counter*(v/5)))-4.9*((((v/5)*counter2-(counter*(v/5)))/(v*(sin(r))))*(((v/5)*counter2-(counter*(v/5)))/(v*sin(r)))))-2+(windowHeight-(windowHeight/5))-25,50,100*cos(frameCount*0.075)+targetx,100*sin(frameCount*0.075)+targety,targetsize);  
if(multifire === true){
targethit2 = collideCircleCircle(((v/5)*counter2-(counter*(v/5)))+windowWidth/10,-1*((1/(tan(r)))*((v/5)*counter2-(counter*(v/5)))-4.9*((((v/5)*counter2-(counter*(v/5)))/(v*(sin(r))))*(((v/5)*counter2-(counter*(v/5)))/(v*sin(r)))))-2+(windowHeight-(windowHeight/5))-25+25,50,100*cos(frameCount*0.075)+targetx,100*sin(frameCount*0.075)+targety,targetsize);  
targethit3 = collideCircleCircle(((v/5)*counter2-(counter*(v/5)))+windowWidth/10,-1*((1/(tan(r)))*((v/5)*counter2-(counter*(v/5)))-4.9*((((v/5)*counter2-(counter*(v/5)))/(v*(sin(r))))*(((v/5)*counter2-(counter*(v/5)))/(v*sin(r)))))-2+(windowHeight-(windowHeight/5))-25+50,50,100*cos(frameCount*0.075)+targetx,100*sin(frameCount*0.075)+targety,targetsize);  
targethit4 = collideCircleCircle(((v/5)*counter2-(counter*(v/5)))+windowWidth/10,-1*((1/(tan(r)))*((v/5)*counter2-(counter*(v/5)))-4.9*((((v/5)*counter2-(counter*(v/5)))/(v*(sin(r))))*(((v/5)*counter2-(counter*(v/5)))/(v*sin(r)))))-2+(windowHeight-(windowHeight/5))-25-25,50,100*cos(frameCount*0.075)+targetx,100*sin(frameCount*0.075)+targety,targetsize);  
targethit5 = collideCircleCircle(((v/5)*counter2-(counter*(v/5)))+windowWidth/10,-1*((1/(tan(r)))*((v/5)*counter2-(counter*(v/5)))-4.9*((((v/5)*counter2-(counter*(v/5)))/(v*(sin(r))))*(((v/5)*counter2-(counter*(v/5)))/(v*sin(r)))))-2+(windowHeight-(windowHeight/5))-25-50,50,100*cos(frameCount*0.075)+targetx,100*sin(frameCount*0.075)+targety,targetsize);  
}
  fill(255);  //target, it moves in a circle
ellipse (100*cos(frameCount*0.075)+targetx,100*sin(frameCount*0.075)+targety,targetsize,targetsize);
  fill(0,0,255); //layers of color for target
ellipse (100*cos(frameCount*0.075)+targetx,100*sin(frameCount*0.075)+targety,3*targetsize/4,3*targetsize/4);
  fill(255,0,0);
ellipse (100*cos(frameCount*0.075)+targetx,100*sin(frameCount*0.075)+targety,targetsize/2,targetsize/2);
  fill(255,255,0);
ellipse (100*cos(frameCount*0.075)+targetx,100*sin(frameCount*0.075)+targety,targetsize/4,targetsize/4);
fill(0);
if(targethit === true){
  targetx = -a+width/2    //if target is hit, change the location
  targety = 2*b - b
  score = score + 1
}
  if(targethit1 === true){
  targetx = -a+width/2
  targety = 2*b - b
  score = score + 1
}
  if(targethit2 === true){
  targetx = -a+width/2
  targety = 2*b - b
  score = score + 1
}
  if(targethit3 === true){
  targetx = -a+width/2
  targety = 2*b - b
  score = score + 1
}
  if(targethit4 === true){
  targetx = -a+width/2
  targety = 2*b - b
  score = score + 1
}

    textSize(16);
  text('Targets Hit',width/2-32,height/20);  //displays text
    textSize(32);
  text(score,width/2,height/10); //displays score
on_screen = collideRectCircle(0,0,windowWidth,windowHeight,((v/5)*counter2-(counter*(v/5)))+windowWidth/10-(windowWidth/100), windowWidth/4.75+(((-tan(r-1.57)*((v/5)*counter2-(counter*(v/5))))/((windowWidth/200)*PI)-sqrt(windowWidth/4.75))*((-tan(r-1.57)*((v/5)*counter2-(counter*(v/5))))/((windowWidth/200)*PI)-sqrt(windowWidth/4.75))),25);
  //up and down are useless variables I am afraid to remove
  not_fired_yet = collideCircleCircle(windowWidth/10,windowHeight-(windowHeight/4.75),50,((v/5)*counter2-(counter*(v/5)))+windowWidth/10-(windowWidth/100), windowWidth/4.75+(((-tan(r-1.57)*((v/5)*counter2-(counter*(v/5))))/((windowWidth/200)*PI)-sqrt(windowWidth/4.75))*((-tan(r-1.57)*((v/5)*counter2-(counter*(v/5))))/((windowWidth/200)*PI)-sqrt(windowWidth/4.75))),25);
  
  
if (fire === 1){  //shoots cannonball
  fill(200);
   ellipse(cannonx,cannony,50,50);
  if(multifire === true){
     ellipse(cannonx,cannony-50,50,50);
    ellipse(cannonx,cannony-25,50,50);
    ellipse(cannonx,cannony+25,50,50);
    ellipse(cannonx,cannony+50,50,50);
  }
}if(not_fired_yet){
     if (fire === 0){    //keeps cannonball from flying without permission
  counter=counter+1
    }
}
            //big thing below is parabolic path of cannonball
  
if(showpath === true){
for (var i = 0; i < windowWidth; i = i + 2) {
   line(i+windowWidth/10,-1*((1/(tan(r)))*i-4.9*((i/(v*(sin(r))))*(i/(v*sin(r)))))-2+(windowHeight-(windowHeight/5))-25,i+windowWidth/10,-1*((1/(tan(r)))*i-4.9*((i/(v*sin(r)))*(i/(v*(sin(r))))))+(windowHeight-(windowHeight/5))-25);
}
}
var power = v/(width/10);
textSize(18);
fill(255,0,0);  
  
arc(windowWidth/15,windowHeight-(4*windowHeight/5),100,100,-HALF_PI,(-s/30)*PI-HALF_PI); //timer visualizaton
  
  
fill(0);
  text('Cannon Power: '+ (round(power*1000)/10) + "%",windowWidth/15,windowHeight-(windowHeight/2)); //displays cannon power
  text('Time Left:' + round(s) + 'seconds',windowWidth/15,windowHeight-(7*windowHeight/10)); //displays time left
rectMode(CORNERS);

  fill((255/(vmax-50))*(v-50),(-255/(vmax-50))*(v-50)+255,0); //colors rectangle indicating power a color between red and green
rect (windowWidth/15,windowHeight-(3*windowHeight/5),v+(windowWidth/15),windowHeight-(11*windowHeight/20));  //rectangle above cannon indicating power
rectMode(CORNER);
fill(165, 138, 89);
ellipse (windowWidth/10,windowHeight-(windowHeight/5),100,100);
ellipse (windowWidth/10-45,windowHeight-(windowHeight/5-50)+33,33,33);    //parts of cannon
ellipse (windowWidth/10+65,windowHeight-(windowHeight/5-50)+33,33,33);
fill(130);  
rect(windowWidth/10-65,windowHeight-(windowHeight/5),150,65);

  
  if(menu === 1){ //score menu after session is over
  rectMode(CORNERS);


    background(130);

var on_button = false
on_button = collidePointRect(mouseX,mouseY,width/2-(width/6),height/2-(height/10),width/3,height/5); //sees if mouse is in button
rectMode(CORNER);
  fill(255,255,0);
rect(width/2-(width/6),height/2-(height/10),width/3,height/5); //button
  textSize(50);
  fill(0);
  text('You hit '+score+' targets!',width/2-(width/10),height/5);
  
  textSize(25);
  fill(0);
  text('DO YOU WANT TO PLAY AGAIN‽',width/2-(width/7),height/2);
  
if(on_button){  //displays all this stuff if mouse is on the button
    fill(0,255,0);   
    rect(width/2-(width/6),height/2-(height/10),width/3,height/5);
    fill(0);
    text('OF COURSE I DO!!!',width/2-(1.25*width/20),height/2);
    if(click === true){  //if clicked, reset cannon game
        counter3 = 60;
        score = 0;
        menu = 0;
       multifire = false;
       showpath = false;
      targetsize = 100;
      }  
}
  
  fill(130);
}  

translate (windowWidth/10,windowHeight-(windowHeight/5));
    
rotate(r);          //cannon barrel
if(menu === 0){
rect(-50,-100,50,100);
}

  if(fire === 0){
   counter = counter + 1;
  } 

  

if(on_screen === false){
  not_fired_yet = true;          
}

  if(fire === 1){
    allowRmovement = false;    //cannot change rotation when fired (it would change path of cannonball)
  }
  if(fire === 0){
    allowRmovement = true;
  }
 if(allowRmovement){
      if (keyIsDown(LEFT_ARROW)) {
    if(r>=0){                            //controls for cannon
    r -= 0.01;
  }
  }
        //rotation control
  if (keyIsDown(RIGHT_ARROW)) {
    if(r<=HALF_PI){

    r += 0.01;
  } 
  }    //power control
      if(v >= 50){
     if (keyIsDown(DOWN_ARROW)) {
    v -= 1.5;
  } 
     }

    if (keyIsDown(UP_ARROW)) {
      if(v <= vmax){
    v += 1.5;
      }
  } 
  }
    
  if(not_fired_yet){
    on_screen = true;
  }
  if(frameCount){
    counter2= counter2+1;    //another counter
  }
  }

function keyPressed() {
  if (keyCode === 32) {
    fire = 1;              //pressing space will fire cannonball
  } else if(on_screen === false){
    fire = 0;
  }
}


function keyTyped(){
    if (key === 'r') {  //debugging stuff for spawning in powerups
    //counter4 = 0;
    //powerspawn = 1;
  }
}