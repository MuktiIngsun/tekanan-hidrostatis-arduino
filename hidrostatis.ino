const int sensorPin = A0;

void setup() {
  Serial.begin(9600);
}

void loop() {
  int sensorValue = analogRead(sensorPin);  
  float millimeters = (sensorValue - 500) / 5.5; 
  if(millimeters <= 0){
    float tekanan = 0.0;
    Serial.println(tekanan);
  } else{
    float tekanan = millimeters * 9.8;
    Serial.println(tekanan);
  }
  delay(1000);
}
