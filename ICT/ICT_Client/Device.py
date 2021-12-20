from serial import Serial


class Device(Serial):
    def __init__(self, port, **kwargs):
        super().__init__(port, 250000, **kwargs)
        assert self.read() == b'\xFD'

    def set_dir(self, mask):
        self.write((mask | (ord('O') << 24)).to_bytes(4, 'big'))

    def clear_dir(self, mask):
        self.write((mask | (ord('I') << 24)).to_bytes(4, 'big'))

    def set_output(self, mask):
        self.write((mask | (ord('S') << 24)).to_bytes(4, 'big'))

    def clear_output(self, mask):
        self.write((mask | (ord('C') << 24)).to_bytes(4, 'big'))

    def toggle_output(self, mask):
        self.write((mask | (ord('T') << 24)).to_bytes(4, 'big'))

    def output(self, mask, state):
        if state == 0 or not state:
            self.clear_output(mask)
        elif state == 1 or state:
            self.set_output(mask)

    def get(self):
        self.write(b'R')
        return int.from_bytes(self.read(4), 'big')