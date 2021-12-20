from functools import reduce

from Channel import Channel


class BusChannel(Channel):
    def __init__(self, device, pins, inverted=False):
        super().__init__()
        self.pins = pins
        self.device = device
        self.inverted = 1 if inverted else 0
        self.mask = reduce(lambda a, b: a | b, map(lambda x: Channel.pin_to_mask(x), pins))
        self.state = None

    def get(self):
        input = self.device.get()
        val = 0
        for i, p in enumerate(self.pins[::-1]):
            v = (1^self.inverted) if Channel.pin_value(input, p) else 0^self.inverted
            val |= (v << i)
        return val

    def set(self, value):
        tog_mask = 0
        input = self.device.get() if not self.inverted else ~self.device.get()

        for i, p in enumerate(self.pins[::-1]):
            cur_status = Channel.pin_value(input, p)
            next_status = (value & (1 << i)) > 0

            if cur_status != next_status:
                tog_mask |= Channel.pin_to_mask(p)
        self.device.toggle_output(tog_mask)

    def __eq__(self, other):
        if type(other) is int:
            return self.state == other
        elif type(other) is BusChannel:
            return self.state == other.state
        else:
            return False

    def __int__(self):
        return self.state

    def __str__(self):
        return str(self.__int__())
