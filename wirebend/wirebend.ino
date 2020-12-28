


String inputString = "";         // a String to hold incoming data
bool stringComplete = false;  // whether the string is complete

#define feeder_dirPin 2
#define feeder_stepPin 3
#define feeder_stepsPerRevolution 200


void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);

  pinMode(feeder_dirPin, OUTPUT);
  pinMode(feeder_stepPin, OUTPUT);

}


void rotate_feeder_motor(int dir, int steps, int motor_speed){

  digitalWrite(feeder_dirPin, dir);
  
  for (int i = 0; i < steps; i++) {
    // These four lines result in 1 step:
    digitalWrite(feeder_stepPin, HIGH);
    delayMicroseconds(motor_speed);
    digitalWrite(feeder_stepPin, LOW);
    delayMicroseconds(motor_speed);
  }
}


//santerin cooodia
void rotate_bend_motor(int dir, int degree, int motor_speed){

/*
  digitalWrite(feeder_dirPin, dir);
  
  for (int i = 0; i < steps; i++) {
    // These four lines result in 1 step:
    digitalWrite(feeder_stepPin, HIGH);
    delayMicroseconds(motor_speed);
    digitalWrite(feeder_stepPin, LOW);
    delayMicroseconds(motor_speed);
  }

  */

  
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


//size = tähden koko senteissä
void doStar(int size){

  //tänne vähän tähtikomentoja

  
}

void loop() {
  
  // put your main code here, to run repeatedly:

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
       rotate_feeder_motor(1, substring.toInt(), 2000);
      
    }

    //example command: bend 1 90
    //kääntää 90 astetta oikealle
    
     else if(inputString.indexOf("bend") != -1){

     String direction_substring = inputString.substring(5,6);
     String degree_substring = inputString.substring(7);

     Serial.println("direction value is:");
     Serial.println(direction_substring);

     Serial.println("degree value is:");
     Serial.println(degree_substring);
       
     Serial.println("ok");

     //rotataattee moottorea
     rotate_bend_motor(direction_substring.toInt(), degree_substring.toInt(), 2000);
      
    }
    
    
    
    else{

       Serial.println("unknown command");
       
    }

      // clear the string:
    inputString = "";
    stringComplete = false;

    rotate_feeder_motor(1, 200, 2000);
      
    }
    
  
  }
