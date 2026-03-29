module clock(
	output logic clock
	);

	initial begin
		clock = 0;
	end

	always #5 clock = ~clock;
endmodule
