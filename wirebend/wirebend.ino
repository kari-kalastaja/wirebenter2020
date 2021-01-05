
#include <Servo.h>
Servo benderServo;

String inputString = "";         // a String to hold incoming data
bool stringComplete = false;  // whether the string is complete

#define feeder_dirPin 4
#define feeder_stepPin 3
#define feeder_stepsPerRevolution 200
#define degreeMultiplier 1.8

const int rotatorStepPin = 5; 
const int rotatorDirPin = 6; 

//const int solenoidPin = 2;
const int servoPin = 9;
int servoDownValue = 100;

void setup() {
  Serial.begin(115200);

  pinMode(feeder_dirPin, OUTPUT);
  pinMode(feeder_stepPin, OUTPUT);

  //pinMode(solenoidPin, OUTPUT);
  pinMode(rotatorStepPin, OUTPUT);
  pinMode(rotatorDirPin, OUTPUT);
  //Solenoid(HIGH);
  ServoState(false);

  benderServo.attach(9);

}

void rotate_feeder_motor(int steps){

  delay(100);

  if(steps>0){
    digitalWrite(feeder_dirPin, LOW);
  }
  else{
    steps=steps*-1;
    digitalWrite(feeder_dirPin, HIGH);
  }
  for (int i = 0; i < steps; i++) {
    digitalWrite(feeder_stepPin, HIGH);
    delayMicroseconds(2000);
    digitalWrite(feeder_stepPin, LOW);
    delayMicroseconds(2000);
  }
  digitalWrite(feeder_dirPin, LOW);

}

void rotate_bend_motor(int degNum){

  //Solenoid(LOW);
  ServoState(true);
  delay(300);
  
  int steps = degNum * degreeMultiplier;
  if(degNum > 0){
    digitalWrite(rotatorDirPin, HIGH);
  }
  else{
    steps = steps * -1;
    digitalWrite(rotatorDirPin, LOW);
  }
  for(int x = 0; x < steps; x++){
    digitalWrite(rotatorStepPin,HIGH); 
    delayMicroseconds(2000); 
    digitalWrite(rotatorStepPin,LOW); 
    delayMicroseconds(2000); 
  }
  digitalWrite(rotatorDirPin, LOW);

  //Solenoid(HIGH);
  ServoState(false);
  delay(200);

  //move_bend_motor((degNum*(-1))/1);
  //move_bend_motor(degNum+30);
}

void move_bend_motor(int degNum){
  
  int steps = degNum * degreeMultiplier;
  if(degNum > 0){
    digitalWrite(rotatorDirPin, HIGH);
  }
  else{
    steps = steps * -1;
    digitalWrite(rotatorDirPin, LOW);
  }
  for(int x = 0; x < steps; x++){
    digitalWrite(rotatorStepPin,HIGH); 
    delayMicroseconds(2000); 
    digitalWrite(rotatorStepPin,LOW); 
    delayMicroseconds(2000); 
  }
  digitalWrite(rotatorDirPin, LOW);
  
}

void serialEvent() {
  
  while (Serial.available()) {
    // get the new byte:
    char inChar = (char)Serial.read();
    // add it to the inputString:
    inputString += inChar;
    // if the incoming character is a newline, set a flag so the main loop can
    // do something about it:
    if (inChar == '\n') {
      stringComplete = true;
    }
  }
}

/*
void Solenoid(bool state){
  digitalWrite(solenoidPin, state);
}
*/

void ServoState(bool state){ //if true, servo is up
  if(state){
    benderServo.write(servoDownValue);
  }
  else{
    benderServo.write(140);
  }
}

//size = tähden koko senteissä
void doStar(int size){

  //rotate_feeder_motor
  //rotate_bend_motor

  
  
}

void doSquare(int num){

  move_bend_motor(-20);
  rotate_feeder_motor(num);
  rotate_bend_motor(110);
  move_bend_motor(-110);
  rotate_feeder_motor(num);
  rotate_bend_motor(110);
  move_bend_motor(-110);
  rotate_feeder_motor(num);
  rotate_bend_motor(110);
  move_bend_motor(-110);
  rotate_feeder_motor(num);
  rotate_bend_motor(110);
  move_bend_motor(-110);

  Serial.println("cut it");
}

void loop() {

   // print the string when a newline arrives:
  if (stringComplete) {
    
    Serial.println("tässä:");
    Serial.println(inputString);

    //process string
    if(inputString.indexOf("star") != -1){
      Serial.println("ok");
      doStar(5);
    }



    
    else if(inputString.indexOf("feed") != -1){

     String substring = inputString.substring(5);

       //Serial.println("value is:");
       Serial.println(substring);
       
       Serial.println("ok");

       //rotataattee moottorea
      // rotate_feeder_motor(0, substring.toInt(), 2000);
      rotate_feeder_motor(substring.toInt());
      
    }

    //example command: bend 90
    //kääntää 90 astetta oikealle
    // bend -90 kääntää vasemmalle
    
     else if(inputString.indexOf("bend") != -1){

     String degree_substring = inputString.substring(5);

     Serial.println("degree value is:");
     Serial.println(degree_substring);
       
     Serial.println("ok");
     
     rotate_bend_motor(degree_substring.toInt());
      
    }

     else if(inputString.indexOf("move") != -1){

     String degree_substring = inputString.substring(5);

     Serial.println("degree value is:");
     Serial.println(degree_substring);
       
     Serial.println("ok");
     
     move_bend_motor(degree_substring.toInt());
      
    }

    else if(inputString.indexOf("set") != -1){

     String valueSubString = inputString.substring(4);

     Serial.println("new value is:");
     Serial.println(valueSubString);
       
     Serial.println("ok");
     
     servoDownValue = (valueSubString.toInt());
      
    }
    
    else if(inputString.indexOf("square") != -1){
      String size_substring = inputString.substring(6);
      Serial.println("size:");
      Serial.println(size_substring.toInt());
      doSquare(size_substring.toInt());
    }
    else{

       Serial.println("unknown command");
       
    }

      // clear the string:
    inputString = "";
    stringComplete = false;

    //rotate_feeder_motor(1, 200, 2000);
      
    }
    
  
  }
