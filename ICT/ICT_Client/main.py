import time

from BusChannelInput import BusChannelInput
from BusChannelOutput import BusChannelOutput
from Channel import D13, D7, D12, D11, A0, A1, D10, A3, A2, D2, D3, D4, D5, D9, D8
from Device import Device
from LogicalChannelInput import LogicalChannelInput
from LogicalChannelOutput import LogicalChannelOutput

if __name__ == '__main__':
    dev = Device('/dev/ttyACM0')
    A = BusChannelOutput(dev, [A3, A2, A1, A0], initial_state=0)
    B = BusChannelOutput(dev, [D5, D4, D3, D2], initial_state=0)
    Y = BusChannelInput(dev, [D11, D10, D9, D8], pullups=0)
    SUB = LogicalChannelOutput(dev, D13, initial_state=False)

    for i in range(16):
        A.state = i
        for j in range(16):
            B.state = j
            SUB.state = False
            expected = (i+j) % 16
            print(A, B, Y, Y == expected)
            assert Y == expected
            SUB.state = True
            expected = ((~i + 1) + j) % 16
            print(A, B, Y, Y==expected)
            assert Y == expected

