module subtractor(
	input logic [7:0] A,
	input logic [7:0] B,
	output logic [7:0] Dif,
	output logic Cout
);

	logic [7:0] SA;
	logic [7:0] SB;
	Logic [7:0] SOut;
	//logic [7:0] B_complement;
	//logic [7:0] twos_complement;

	assign SA = 8'd1;
	assign SB = ~B;
	
	//adder complement_adder(
	//	.A(8'd1),
	//	.B(B_complement),
	//	.Sum(twos_complement),
	//	.Cout()
	//);
	
	adder mod_adder(
		.A(SA),
		.B(SB),
		.Sum(SOut),
		.Cout(Cout)
		);

	#5;

	assign SB = Sout;
	assign SA = A;

	#5;
	assign Dif = Sout;
endmodule
