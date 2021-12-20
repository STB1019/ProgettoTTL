from BusChannel import BusChannel


class BusChannelOutput(BusChannel):
    def __init__(self, device, pins, initial_state=False, inverted=False):
        super().__init__(device, pins, inverted=inverted)
        self.device.set_dir(self.mask)
        self.state = initial_state

    def __setattr__(self, name, value):
        if name == 'state' and value is not None:
            if type(value) is int:
                self.set(value)
        self.__dict__[name] = value