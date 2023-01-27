module HalfAdder(
	output	Carry, Sum,
	input	Bit1, Bit2
);
	assign	Sum		= Bit1 ^ Bit2,
			Carry	= Bit1 & Bit2;
endmodule
