module tb_adder;

	logic [7:0] tb_a;
	logic [7:0] tb_b;
	logic [7:0] tb_sum;
	logic tb_cout;

	adder adder_inst (
		.A(tb_a),
		.B(tb_b),
		.Sum(tb_sum),
		.Cout(tb_cout)
	);

	initial begin
		tb_a = 8'd1;
		tb_b = 8'd1;
		#10;
		check_output(8'd2, 0);

		tb_a = 8'd255;
		tb_b = 8'd1;
		#10;
		check_output(8'd0, 1);

	end

	task check_output(logic [7:0] expected_sum, logic expected_cout);
		if (tb_sum === expected_sum && tb_cout === expected_cout) begin
			$display("PASS!!");
			$display("Sum = %0d, carry = %0d", tb_sum, tb_cout);
		end else begin
			$display("FAIL!!");
			$display("Sum = %0d, expected %0d", tb_sum, expected_sum);
			$display("Carry = %0d, expected %0d", tb_cout, expected_cout);
		end
	endtask
endmodule
