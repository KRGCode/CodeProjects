#Spark Electronics--https://www.sparkfun.com/products/10097

#include <LiquidCrystal.h>          
LiquidCrystal lcd(13, 12, 11, 10, 9, 8);    
void setup() {                     
  lcd.begin(16, 2);                  

}

void loop() {
  lcd.scrollDisplayRight();
  lcd.setCursor(4,0);          
  lcd.print ("KRGCode");         
  lcd.setCursor(3,2);
  lcd.print ("On Github");
  lcd.setCursor(0,0);
  lcd.print ("+");
  lcd.setCursor(0,2);
  lcd.print ("+");
  lcd.setCursor(15,0);
  lcd.print ("+");
  lcd.setCursor(15,2);
  lcd.print ("+");

// Turn on the blinking cursor:
  lcd.blink();
  delay(1000);
   

lcd.setCursor(0,2);
lcd.print ("");
}  
