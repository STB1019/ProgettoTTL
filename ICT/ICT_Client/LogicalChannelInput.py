from Channel import Channel
from LogicalChannel import LogicalChannel


class LogicalChannelInput(LogicalChannel):
    def __init__(self, device, definition, pullup=False, pin=None, inverted=False):
        super().__init__(device, definition, pin=pin, inverted=inverted)
        self.device.clear_dir(self.mask)
        if pullup:
            self.set(pullup)

    def __setattr__(self, name, value):
        if name == 'state' and value is not None:
            pass
        self.__dict__[name] = value

    def __int__(self):
        self.state = self.get()
        return super().__int__()

    def __bool__(self):
        self.state = self.get()
        return super().__bool__()

    def __eq__(self, other):
        self.state = self.get()
        if type(other) is int:
            other = other == 1
            return other == self.state
        return super().__eq__(other)