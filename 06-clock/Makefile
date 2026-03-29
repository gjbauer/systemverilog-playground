
all: surfer

surfer: test run
	surfer dump.vcd

test:
	iverilog -g2012 -o test.vvp clock.sv testbench.sv

run:
	vvp test.vvp

clean:
	rm test.vvp

.PHONY: clean
