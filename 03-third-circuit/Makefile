
all: test run

test:
	iverilog -g2012 -o test.vvp adder.sv subtractor.sv testbench.sv

run:
	vvp test.vvp

clean:
	rm test.vvp

.PHONY: clean
