module clock(
	output logic clock
	);

	initial begin
		assign clock = 0;
		forever #5 clock = ~clock;
	end
endmodule
