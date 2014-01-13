int ledPins[] = {2,3,4,5,6,7,8,9,10,11};
int speakerPin = 12;

int numTones = 10;
int tones[] = {261, 277, 294, 311, 330, 349, 370, 392, 415, 440};

void setup(){
  Serial.begin(9600);
  for(int i = 0; i<10; i++){
    pinMode(ledPins[i],OUTPUT);
  }
}

void loop(){
  if(Serial.available()>0){
    int data = Serial.read();
    Serial.println(data);
    randomBlink();
    randomBuzz();
  }
}

void randomBlink(){
  int rand = random(10);
  digitalWrite(ledPins[rand],HIGH);
  delay(50);
  digitalWrite(ledPins[rand],LOW);
}

void randomBuzz(){
  int rand = random(10);
  tone(speakerPin,tones[rand]);
  delay(50);
  noTone(speakerPin);
}
  

void buzz(int targetPin, long frequency, long length) {
  long delayValue = 1000000/frequency/2; // calculate the delay value between transitions
  //// 1 second's worth of microseconds, divided by the frequency, then split in half since
  //// there are two phases to each cycle
  long numCycles = frequency * length/ 1000; // calculate the number of cycles for proper timing
  //// multiply frequency, which is really cycles per second, by the number of seconds to 
  //// get the total number of cycles to produce
 for (long i=0; i < numCycles; i++){ // for the calculated length of time...
    digitalWrite(targetPin,HIGH); // write the buzzer pin high to push out the diaphram
    delayMicroseconds(delayValue); // wait for the calculated delay value
      delay(50);
    digitalWrite(targetPin,LOW); // write the buzzer pin low to pull back the diaphram
    delayMicroseconds(delayValue); // wait againf or the calculated delay value
  }
}

