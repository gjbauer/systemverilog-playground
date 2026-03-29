
all: test run

test:
	iverilog -g2012 -o test.vvp flip-flop.sv

run:
	vvp test.vvp

clean:
	rm test.vvp

.PHONY: clean
