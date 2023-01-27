`timescale 1ns/1ns
`include "./full-adder.v"

module tb_FullAdder;
	wire	tb_Carry,
			tb_Sum;
			
	reg		tb_Bit1,
			tb_Bit2,
			tb_Bit3;
	
	FullAdder	FA(	.Carry (tb_Carry),
					.Sum (tb_Sum),
					.Bit1 (tb_Bit1),
					.Bit2 (tb_Bit2),
					.Bit3 (tb_Bit3)
					);
	
	initial begin
			tb_Bit1 = 0; tb_Bit2 = 0; tb_Bit3 = 0;
		#10 tb_Bit1 = 0; tb_Bit2 = 0; tb_Bit3 = 1;
		#10 tb_Bit1 = 0; tb_Bit2 = 1; tb_Bit3 = 0;
		#10 tb_Bit1 = 0; tb_Bit2 = 1; tb_Bit3 = 1;
		#10 tb_Bit1 = 1; tb_Bit2 = 0; tb_Bit3 = 0;
		#10 tb_Bit1 = 1; tb_Bit2 = 0; tb_Bit3 = 1;
		#10 tb_Bit1 = 1; tb_Bit2 = 1; tb_Bit3 = 0;
		#10 tb_Bit1 = 1; tb_Bit2 = 1; tb_Bit3 = 1;
	end
	
	initial $monitor("Time: %2d, Bit1: %b, Bit2: %b, Bit3: %b, CS: %b%b", $time, tb_Bit1, tb_Bit2, tb_Bit3, tb_Carry, tb_Sum);
endmodule
