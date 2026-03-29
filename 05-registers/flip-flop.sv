module flip_flop(
	input logic clk,
	input logic S,
	input logic R,
	output wire Q);

	wire Q_prime;

	wire w1, w2;

	assign w1 = Q_prime;

	assign w2 = Q;

	nor(Q_prime, w2, (S & clk));
	nor(Q, w1, (R & clk));

endmodule
