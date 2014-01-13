import processing.serial.*;
Serial portA;
void setup(){
  size (55,55);
  portA = new Serial(this, Serial.list()[2],9600);
  
}

void draw(){
}

void keyPressed(){
  portA.write(".");
  
}

void keyReleased(){
}
  
