/*https://tusindfryd.github.io/screenduino/   custom glyph generator */

#include <LiquidCrystal.h>       
LiquidCrystal lcd (13,12, 11, 10, 9, 8);

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

byte smile[13] = {
  B11110,
  B00011,
  B01010,
  B11111,
  B11111,
  B11001,
  B10011,
  B00000,
  B10011,
  B01111,
  B11011,
  B00011,
  B11110,
};

byte smil[13] = {
  B00010,
  B00011,
  B01010,
  B11111,
  B11111,
  B11001,
  B10000,
  B00000,
  B10011,
  B01111,
  B11011,
  B00011,
  B10010,
};


void setup () {
  lcd.createChar(0, smiley);
  lcd.begin(16, 2); 
  lcd.setCursor(0, 1);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(2, 2);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 3);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 5);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 7);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 9);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 11);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 13);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 16);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 18);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 20);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 22);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 24);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 26);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 30);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 32);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 34);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();


  lcd.createChar(0, smile);
  lcd.begin(16, 1); 
  lcd.setCursor(0, 1);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(2, 2);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 3);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 5);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 7);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 9);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 11);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 13);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 16);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 18);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 20);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 22);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 24);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 26);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 30);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 32);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.setCursor(0, 34);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();

  lcd.createChar(0, smil);
  lcd.begin(16, 2); 
  lcd.setCursor(0, 1);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.begin(16,1);
  lcd.setCursor(3, 2);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.begin(16,2);
  lcd.setCursor(5, 1);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.begin(16,1);
  lcd.setCursor(7, 2);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.begin(16,2);
  lcd.setCursor(9, 1);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.begin(16,1);
  lcd.setCursor(11, 2);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.begin(16,2);
  lcd.setCursor(13, 1);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.begin(16,1);
  lcd.setCursor(15, 2);
  lcd.write(byte(0));
   delay(200);
  lcd.noDisplay();
  delay(200);
  lcd.display();
  lcd.scrollDisplayRight();
  lcd.begin(16,2);
  lcd.setCursor(17, 1);
  lcd.write(byte(0));
}
void loop() {}

