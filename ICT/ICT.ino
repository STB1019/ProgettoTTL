void setup() {
  DDRB &= ~0x3F;
  DDRC &= ~0x3F;
  DDRD &= ~0xFC;

  Serial.begin(250000);
  delay(500);
  Serial.write(253);
}

void loop() {
  if(Serial.available()){
    switch (Serial.read()){
      case 'S':
        while (Serial.available() < 3);
        PORTB |= Serial.read() & 0x3F;
        PORTC |= Serial.read() & 0x3F;
        PORTD |= (Serial.read() << 2) & 0xFC;
        break;
      case 'C':
        while (Serial.available() < 3);
        PORTB &= ~(Serial.read() & 0x3F);
        PORTC &= ~(Serial.read() & 0x3F);
        PORTD &= ~((Serial.read() << 2) & 0xFC);
        break;

      case 'T':
        while (Serial.available() < 3);
        PORTB ^= Serial.read() & 0x3F;
        PORTC ^= Serial.read() & 0x3F;
        PORTD ^= (Serial.read() << 2) & 0xFC;
        break;

      case 'I':
        while (Serial.available() < 3);
        DDRB &= ~(Serial.read() & 0x3F);
        DDRC &= ~(Serial.read() & 0x3F);
        DDRD &= ~((Serial.read() << 2) & 0xFC);
        break;

      case 'O':
        while (Serial.available() < 3);
        DDRB |= Serial.read() & 0x3F;
        DDRC |= Serial.read() & 0x3F;
        DDRD |= (Serial.read() << 2) & 0xFC;
        break;

      case 'R':
        Serial.write(0);
        Serial.write(PINB & 0x3F);
        Serial.write(PINC & 0x3F);
        Serial.write(PIND >> 2);
        break;

      default:
        break;
    }
  }

}
