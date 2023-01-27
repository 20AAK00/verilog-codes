`include "./half-adder.v"

module FullAdder(
	output	Carry,
			Sum,
	input	Bit1, 
			Bit2, 
			Bit3
);
	wire	Sum1,
			Carry1,
			Carry2;

	HalfAdder 	HA1(.Carry (Carry1),
					.Sum (Sum1),
					.Bit1 (Bit1),
					.Bit2 (Bit2)
					);
	HalfAdder	HA2(.Carry (Carry2),
					.Sum (Sum),
					.Bit1 (Sum1),
					.Bit2 (Bit3)
					);
	
	assign	Carry = Carry1 | Carry2;
endmodule
