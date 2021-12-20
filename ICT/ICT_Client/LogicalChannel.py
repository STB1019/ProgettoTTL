from Channel import Channel


class LogicalChannel(Channel):
    def __init__(self, device, definition, pin=None, inverted=False):
        super().__init__()
        self.pin = definition if type(definition) is tuple else (definition, pin)
        self.mask = Channel.pin_to_mask(self.pin)
        self.device = device
        self.inverted = inverted
        self.state = None

    def set(self, value):
        self.device.output(self.mask, value if not self.inverted else not value)

    def get(self):
        return Channel.pin_value(self.device.get(), self.pin) if not self.inverted else not Channel.pin_value(self.device.get(), self.pin)

    def __eq__(self, other):
        if type(other) is int:
            return self.state == (other == 1)
        if type(other) is bool:
            return self.state == other
        elif type(other) is LogicalChannel:
            return self.state == other.state
        else:
            return False

    def __bool__(self):
        return self.state

    def __int__(self):
        return 1 if self.state else 0

    def __str__(self):
        return str(self.__int__())