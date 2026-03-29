module testbench;

	logic clk;
	clock clock(
		.clock(clk)
		);
	initial begin
		$dumpfile("dump.vcd");
		$dumpvars(0, clock);
		#200 $finish;
	end
endmodule
