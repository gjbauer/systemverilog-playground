module adder(
	input logic [7:0 ]A,
	input logic [7:0] B,
	output logic [7:0] Sum,
	output logic Cout
);

	wire w1, w2, w3;
	logic Cin[7:0];

	assign Cin[0] = 1'b0;

	genvar i;
	generate
		for (i=0; i < 8; i = i + 1) begin
			assign w1 = A[i] ^ B[i];
			assign Sum[i] = w1 ^ Cin[i];
			assign w2 = w1 & Cin[i];
			assign w3 = A[i] & B[i];
			if ( i < 7 ) begin
				assign Cin[i+1] = w2 | w3;
			end else begin
				assign Cout = w2 | w3;
			end
		end
	endgenerate
endmodule
