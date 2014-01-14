import processing.serial.*;
Serial portA;
  char[] keyArr= null;
    int index = 0;
    boolean record =false;


void setup(){
  size (55,55);
  portA = new Serial(this, Serial.list()[2],9600);
  
}

void draw(){
}

void keyPressed(){
  // a = 97,s = 115,d=100,f=102,g = 103, h = 104, j = 106;
  switch(key)
  {
    case 97: 
    portA.write(0);
    if(record==true){
    appendToKeyArr(key);
    }
    print(key);
    break;
    
    case 115:
    portA.write(1);
    if(record==true){
    appendToKeyArr(key);
    }
    print(key);
    break;
    
    case 100:
    portA.write(2);
    if(record==true){
    appendToKeyArr(key);
    }
    print(key);
    break;
    
    case 102:
    portA.write(3);
    if(record==true){
    appendToKeyArr(key);
    }
    print(key);
    break;
    
    case 103:
    portA.write(4);
    if(record==true){
    appendToKeyArr(key);
    }
    print(key);
    break;
    
    case 104:
    portA.write(5);
    if(record==true){
    appendToKeyArr(key);
    }
    print(key);
    break;
    
    case 106:
    portA.write(6);
    if(record==true){
    appendToKeyArr(key);
    }
    print(key);
    break;
    
    case 107:
    portA.write(7);
    if(record==true){
    appendToKeyArr(key);
    }
    print(key);
    break;
    case 108:
    portA.write(8);
    if(record==true){
    appendToKeyArr(key);
    }
    print(key);
    break;
    
    case 59:
    portA.write(9);
    if(record==true){
    appendToKeyArr(key);
    }
    print(key);
    break;
    
    //record
    case 114://r
    keyArr = new char[100];
    keyArr[0] = 0;
    record = true;
    break;  
    //play
    case 112://p
    for(int i =0;i<index;i++){
      
    portA.write(charToInt(keyArr[i+1]));
    }
    break;
   
   default:
    print("defalt"); 
    
  }
//  if(key=='a'){
//    portA.write(1);
//    print(key);
//  }
  
}
int charToInt(char elem){
  switch(elem){
     case 97:
     return 0;
     
     case 115:
     return 1;
     
     case 100:
     return 2;
     
     case 102:
     return 3;
     
     case 103:
     return 4;
     
     case 104:
     return 5;
     
     
     case 106:
     return 6;
     
     case 107:
     return 7;
     
     case 108:
     return 8;
    
     
     case 59:
     return 9;
     
     default:
     return -1;
  }
}
void appendToKeyArr(char elem){
  keyArr[index] = elem;
    index++;
}
void keyReleased(){
}
  
