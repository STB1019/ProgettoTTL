class Channel:

    PORTB = 16
    PORTC = 8
    PORTD = 0

    PIN0 = 0
    PIN1 = 1
    PIN2 = 2
    PIN3 = 3
    PIN4 = 4
    PIN5 = 5

    @staticmethod
    def pin_to_mask(definition, pin=None):
        if type(definition) is tuple:
            port, pin = definition
        else:
            port = definition

        assert type(port) is int
        assert type(pin) is int
        return (1 << (port + pin)) & 0xFFFFFF

    @staticmethod
    def pin_value(value, definition, pin=None):
        mask = Channel.pin_to_mask(definition, pin)
        return value & mask > 0

D2 = (Channel.PORTD, Channel.PIN0)
D3 = (Channel.PORTD, Channel.PIN1)
D4 = (Channel.PORTD, Channel.PIN2)
D5 = (Channel.PORTD, Channel.PIN3)
D6 = (Channel.PORTD, Channel.PIN4)
D7 = (Channel.PORTD, Channel.PIN5)

D8 = (Channel.PORTB, Channel.PIN0)
D9 = (Channel.PORTB, Channel.PIN1)
D10 = (Channel.PORTB, Channel.PIN2)
D11 = (Channel.PORTB, Channel.PIN3)
D12 = (Channel.PORTB, Channel.PIN4)
D13 = (Channel.PORTB, Channel.PIN5)

A0 = (Channel.PORTC, Channel.PIN0)
A1 = (Channel.PORTC, Channel.PIN1)
A2 = (Channel.PORTC, Channel.PIN2)
A3 = (Channel.PORTC, Channel.PIN3)
A4 = (Channel.PORTC, Channel.PIN4)
A5 = (Channel.PORTC, Channel.PIN5)
