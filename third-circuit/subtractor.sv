module subtractor(
	input logic [7:0] A,
	input logic [7:0] B,
	output logic [7:0] Dif,
	output logic Cout
);

	logic [7:0] B_complement;
	logic [7:0] twos_complement;

	assign B_complement = ~B;
	
	logic [7:0] one_holder = 8'd1;

	adder complement_adder(
		.A(8'd1),
		.B(B_complement),
		.Sum(twos_complement),
		.Cout()
	);
	
	adder main_adder(
		.A(A),
		.B(twos_complement),
		.Sum(Dif),
		.Cout(Cout)
		);

endmodule
