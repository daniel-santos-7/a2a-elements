module MUTEX (
	input r1,
	input r2,
	output g1,
	output g2
);

	wire g1n;
	wire g2n;

	assign g1n = ~(r1 & g2n);
	assign g2n = ~(r2 & g1n);
	
	assign g1 = ~(g1n);
	assign g2 = ~(g2n);

endmodule
