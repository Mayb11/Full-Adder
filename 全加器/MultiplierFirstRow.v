
module MultiplierFirstRow (
// Declare input and output ports
    input  [1:0] m,
    input  [1:0] q,
    input        cIn,
    
    output [1:0] qOut,
    output       cOut,
    output       mOut,
    output       s
);
// Declare several single-bit wires that we can
// use to interconnect the gates. 
    wire A,B;
// Instantiate gates to calculate adder's inputs value(a,b) 
	 and (A,q[1],m[0]);
	 and (B,q[0],m[1]);
// Use module Adder1Bit to calculate necessary outputs
	 Adder1Bit FA(
	 .a(A),
	 .b(B),
	 .cin(cIn),
	 .cout(cOut),
	 .sum(s)
	 );
// Assign values to these two outputs 
	 assign mOut=m[0];
	 assign qOut=q;
	 
endmodule
