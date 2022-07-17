#include <LiquidCrystal.h>

LiquidCrystal lcd(13,12, 11, 10, 9, 8);

byte smiley[8] = {
  B11111,
  B11111,
  B11111,
  B11111,
  B11111,
  B11111,
  B11111,
};

void setup () {
  lcd.createChar(0, smiley);
  lcd.begin(16, 2);  
  lcd.setCursor(0, 2);
  lcd.write(byte(0));
}


 void loop() {}
