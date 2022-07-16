# DAC-ADC Loopback Testing on Zynq UltraScale+ RFSoC RF Data Converter

Device: XCZU49DR 

There are 16 channels connected to DACs and ADCs of the data converter.

DAC input pattern is configurable by the case statement inside the fpga_top.sv, it is adjusted to drive 6 samples (=3ns pulse) every 32 clock cycles.
