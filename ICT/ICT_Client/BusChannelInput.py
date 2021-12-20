from BusChannel import BusChannel
from Channel import Channel


class BusChannelInput(BusChannel):
    def __init__(self, device, pins, pullups=0, inverted=False):
        super().__init__(device, pins, inverted=inverted)
        self.device.clear_dir(self.mask)
        self.set(pullups)

    def __setattr__(self, name, value):
        if name == 'state' and value is not None:
            pass
        self.__dict__[name] = value

    def __eq__(self, other):
        self.state = self.get()
        if type(other) is int:
            return other == self.state
        return super().__eq__(other)

    def __int__(self):
        self.state = self.get()
        return super().__int__()