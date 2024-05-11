void setup() {
  size(400, 400); 
}

void draw(){
  background(255);
  stroke(0);
  
  translate(width/2, height/2); 
  scale(1,-1);
  strokeWeight(1);
  stroke(255,0,0);
  line(0,-200,0,200);
  line(-200,0,2000,0);
  
  ellipse(0,0,10,10);
  
}
