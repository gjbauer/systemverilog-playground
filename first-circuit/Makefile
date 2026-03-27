
all: test run

test:
	iverilog -o test.vvp test.sv

run:
	vvp test.vvp

clean:
	rm test.vvp

.PHONY: clean
