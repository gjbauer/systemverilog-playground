module tb_adder;

	logic [7:0] tb_a;
	logic [7:0] tb_b;
	logic [7:0] tb_sum;
	logic a_tb_cout;
	logic [7:0] tb_dif;
	logic s_tb_cout;

	adder adder_inst (
		.A(tb_a),
		.B(tb_b),
		.Sum(tb_sum),
		.Cout(a_tb_cout)
	);

	subtractor sub_inst (
		.A(tb_a),
		.B(tb_b),
		.Dif(tb_dif),
		.Cout(s_tb_cout)
		);

	initial begin
		tb_a = 8'd1;
		tb_b = 8'd1;
		#10;
		check_adder(8'd2, 0);

		tb_a = 8'd255;
		tb_b = 8'd1;
		#10;
		check_adder(8'd0, 1);

		tb_a = 8'd254;
		tb_b = 8'd255;
		#10;
		check_subtractor(-1, 0);

		tb_a = 8'd10;
		tb_b = 8'd5;
		#10;
		check_subtractor(5, 1);

		tb_a = 8'd5;
		tb_b = 8'd10;
		#10;
		check_subtractor(-5, 0);

	end

	task check_adder(logic [7:0] expected_sum, logic expected_cout);
		if (tb_sum === expected_sum && a_tb_cout === expected_cout) begin
			$display("PASS!!");
			$display("Sum = %0d, carry = %0d", tb_sum, a_tb_cout);
		end else begin
			$display("FAIL!!");
			$display("Sum = %0d, expected %0d", tb_sum, expected_sum);
			$display("Carry = %0d, expected %0d", a_tb_cout, expected_cout);
		end
	endtask
	task check_subtractor(logic [7:0] expected_dif, logic expected_cout);
		if (tb_dif === expected_dif && s_tb_cout === expected_cout) begin
			$display("PASS!!");
			$display("Difference = %0d, carry = %0d", tb_dif, s_tb_cout);
		end else begin
			$display("FAIL!!");
			$display("Difference = %0d, expected %0d", tb_dif, expected_dif);
			$display("Carry = %0d, expected %0d", s_tb_cout, expected_cout);
		end
	endtask
endmodule
