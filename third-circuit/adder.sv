module adder(
	input logic [7:0 ]A,
	input logic [7:0] B,
	output logic [7:0] Sum,
	output logic Cout
);

	logic Cin[7:0];

	assign Cin[0] = 1'b0;

	genvar i;
	generate
		for (i=0; i < 8; i = i + 1) begin
			assign Sum[i] = (A[i] ^ B[i]) ^ Cin[i];
			if ( i < 7 ) begin
				assign Cin[i+1] = (A[i] ^ B[i]) & Cin[i] | (A[i] & B[i]);
			end else begin
				assign Cout = (A[i] ^ B[i]) & Cin[i] | (A[i] & B[i]);
			end
		end
	endgenerate
endmodule
