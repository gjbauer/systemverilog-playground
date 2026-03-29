module register(
	input logic clk,
	input logic reset,
	input logic [7:0] data_in,
	output logic [7:0] data_out
	);

	logic [7:0] R;

	
	logic [7:0] data;

	assign data = reset ? 8'd0 : data_in;
	assign R = reset ? 8'd0 : ~data_in;

	flip_flop register [7:0] (
		.clk(clk),
		.S(data_in),
		.R(R),
		.Q(data_out)
		);
endmodule
