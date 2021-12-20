from LogicalChannel import LogicalChannel


class LogicalChannelOutput(LogicalChannel):
    def __init__(self, device, definition, initial_state=False, inverted=False, pin=None):
        super().__init__(device, definition, pin=pin, inverted=inverted)
        self.device.set_dir(self.mask)
        self.state = initial_state

    def __setattr__(self, name, value):
        if name == 'state' and value is not None:
            if type(value) is int:
                value = value == 1
            self.device.output(self.mask, value)
        self.__dict__[name] = value