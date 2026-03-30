module subtractor(
	input logic [7:0] A,
	input logic [7:0] B,
	output logic [7:0] Dif,
	output logic Cout
);

	logic [7:0] B_complement;
	logic [7:0] twos_complement;

	assign B_complement = ~B;
	
	adder complement_adder(
		.A(8'd1),
		.B(B_complement),
		.Sum(twos_complement),
		.Cout()
	);
	
	adder mod_adder(
		.A(A),
		.B(twos_complement),
		.Sum(Dif),
		.Cout(Cout)
		);

	#5;

	SB = Sout;
	SA = A;
endmodule
