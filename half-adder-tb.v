`timescale 1ns/1ns
`include "./half-adder.v"

module tb_HalfAdder;
	wire	tb_Carry, 
			tb_Sum;
			
	reg		tb_Bit1,
			tb_Bit2;
	
	HalfAdder 	HA(	.Carry (tb_Carry), 
					.Sum (tb_Sum), 
					.Bit1 (tb_Bit1), 
					.Bit2 (tb_Bit2)
					);
	
	initial begin
			tb_Bit1 = 0; tb_Bit2 = 0;
		#10 tb_Bit1 = 0; tb_Bit2 = 1;
		#10 tb_Bit1 = 1; tb_Bit2 = 0;
		#10 tb_Bit1 = 1; tb_Bit2 = 1;
	end
	
	initial $monitor("Time: %2d, Bit1: %b, Bit2: %b, CS: %b%b", $time, tb_Bit1, tb_Bit2, tb_Carry, tb_Sum);
endmodule
