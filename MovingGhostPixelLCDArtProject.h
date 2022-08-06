#include <LiquidCrystal.h>       
LiquidCrystal lcd(13,12, 11, 10, 9, 8);

byte smiley[13] = {
  B11110,
  B01111,
  B01010,
  B11111,
  B11111,
  B11001,
  B11111,
  B00000,
  B11111,
  B01111,
  B11011,
  B00011,
  B11110,
};

void setup () {
  lcd.createChar(0, smiley);
  lcd.begin(16, 2);  
  lcd.setCursor(0, 2);
  lcd.setCursor(7, 2);
  lcd.write(byte(0));
  lcd.setCursor(8, 0);
  lcd.write(byte(0));
  lcd.setCursor(6, 0);
  lcd.write(byte(0));
  lcd.setCursor(7, 0);
  lcd.write(byte(0));
  lcd.setCursor(0, 0);
  lcd.write(byte(0));
  lcd.setCursor(0, 16);
  lcd.write(byte(0));
  lcd.setCursor(15, 0);
  lcd.write(byte(0));
  lcd.setCursor(15, 1);
  lcd.write(byte(0));

}



 void loop() {}
