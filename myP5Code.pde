//🟢setup Function - will run once
setup = function() {
    size(600, 400);
    background(255,255,255,0);
    
    drawFish(200, 200, color(200,0,200)); 
    drawFish(300, 200, color(0,200,200));
  
    
};

//🟢draw Function - will run on repeat
draw = function(){
  drawShark(400,150)
   drawShark(200,150)
  drawPuffer(100, 200);
};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){

  drawFishingpole(mouseX,mouseY)
}

//drawFishingpole Function
var drawFishingpole = function(mouseX, mouseY){

textSize(50);
text("🎣", mouseX, mouseY);
}

//drawShark Function - will run when called
var drawShark = function(fishX, fishY){
textSize(100);
text("🦈", fishX, fishY);

};

//drawPuffer Function
var drawPuffer =  function(pufferX,pufferY) {
noStroke();
fill(157, 192, 139);
rect(pufferX, pufferY, 55,55);
fill(225, 234, 205);  
quad(pufferX-15, pufferY+45, pufferX+40, pufferY+65, pufferX+65, pufferY+15, pufferX+15, pufferY-10);
fill(0,0,0); //spike of the head
fill(225, 234, 205); 
quad(pufferX-15, pufferY+25, pufferX+20, pufferY+65, pufferX+65, pufferY+35, pufferX+30, pufferY-10);
fill(0,0,0);

ellipse(pufferX+30,pufferY+20,5,8); //eyes
ellipse(pufferX+50,pufferY+20,5,8); //eyes
ellipse(pufferX+40,pufferY+40,5,8); //mouth
ellipse(pufferX+41,pufferY+40,2,8); //highlight
ellipse(pufferX+51,pufferY+18,2,2); //highlight
ellipse(pufferX+31,pufferY+18,2,2); //highlight
fill(58, 125, 68);
arc(pufferX+10, pufferY, 20, 30, 0, HALF_PI);
arc(pufferX+15,pufferY+35, 20, 30, 0, HALF_PI);
arc(pufferX, pufferY+25, 20, 30, 0, HALF_PI);
};


//🟡drawFish Function - will run when called
var drawFish = function(fishX, fishY, fishColor){
  textSize(80);
  fill(fishColor);
  text("𓆝", fishX, fishY);
};




