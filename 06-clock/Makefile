
all: test run

test:
	iverilog -g2012 -o test.vvp clock.sv

run:
	vvp test.vvp

clean:
	rm test.vvp

.PHONY: clean
