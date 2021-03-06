
module MultiplierRemainRow (
// Declare input and output ports
    input  pp,
    input  m,
    input  q,
    input  cIn,
    
    output qOut,
    output cOut,
    output mOut,
    output s
);
// Declare several single-bit wires that we can
// use to interconnect the gates. 
    wire A;
// Instantiate gates to calculate adder's inputs value(a) 
	 and (A,q,m);

// Use module Adder1Bit to calculate necessary outputs
	 Adder1Bit FA(
	 .a(A),
	 .b(pp),
	 .cin(cIn),
	 .cout(cOut),
	 .sum(s)
	 );
// Assign drivers to these two outputs which acutlly not outcome a real value
	 assign mOut=m;
	 assign qOut=q;
endmodule	 


