
module Multiplier2x3 (
// Declare input and output ports
    input  [1:0] m,
    input  [2:0] q,
    
    output [4:0] p
);
// Declare several single-bit wires that we can
// use to interconnect the gates. 
	 wire [1:0]Q1,Q2;
	 wire Q3,Q4,C1,C2,C3,M1,M2,M3,M4,S_P;
// Instantiate gates to calculate 1st bit of P output
	 and (p[0],q[0],m[0]);
// Use module MultiplierFirstRow to calculate 2nd bit of P output
	 MultiplierFirstRow one(
    .m(m),
	 .q(q),
	 .cIn(0),
	 .qOut(Q1),
	 .cOut(C1),
	 .mOut(M1),
	 .s(p[1])
	 );
//Use module MultiplierFirstRow and MultiplierRemainingRow to calculate 3rd bit of P output

	 MultiplierFirstRow two(
	 .m(m[1]),
	 .q(Q1),
	 .cIn(C1),
	 .qOut(Q2),
	 .cOut(C2),
	 .mOut(M2),
	 .s(S_P)
	 );
	 MultiplierRemainRow three(
	 .pp(S_P),
    .m(M1),
    .q(q[2]),
    .cIn(0),
	 .qOut(Q3),
    .cOut(C3),
    .mOut(M3),
    .s(p[2])
	 );
//Use module MultiplierRemainingRow to calculate 4th and 5th bit of P output
	 MultiplierRemainRow four(
	 .pp(C2),
    .m(M2),
    .q(Q3),
    .cIn(C3),
	 .qOut(Q4),
    .cOut(p[4]),
    .mOut(M4),
    .s(p[3])
	 );

endmodule

