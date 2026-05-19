module FourBitAdder(
    input[3:0] a,
    input[3:0] b,
    output[4:0] s
);

    // Internal carry wires between stages
    wire c1, c2, c3;
    
    // chain four full adders - carry-out of each feeds carry-in of the next
    // LSB: carry-in tied to 0 (ie. nothing on the right)
    
    FullAdder fa0(.a(a[0]), .b(b[0]), .ci(1'b0), .s(s[0]), .co(c1));
    FullAdder fa1(.a(a[1]), .b(b[1]), .ci(c1), .s(s[1]), .co(c2));
    FullAdder fa2(.a(a[2]), .b(b[2]), .ci(c2), .s(s[2]), .co(c3));
    // MSB: carry-out goes to s[4] - the 5th output bit
    FullAdder fa3(.a(a[3]), .b(b[3]), .ci(c3), .s(s[3]), .co(s[4]));
    
endmodule
    
    