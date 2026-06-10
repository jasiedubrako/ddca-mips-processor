module TopModule(
    input [3:0] a,
    input [3:0] b,
    output [6:0] D,
    output       overflow,
    output [3:0] AN
);

    // Internal wire carrying the full 5-bit adder result
    wire [4:0] sum;
    
    // Instantiating the 4-bit adder
    FourBitAdder adder(
        .a(a),
        .b(b),
        .s(sum)
    );
    
    // MSB goes to overflow LED
    assign overflow = sum[4];
    
    // Lower 4 bits go to the decoder -> 7-segment display
    Decoder decoder(
        .in(sum[3:0]),
        .D(D)
    );
    
    // Activate only the rightmost display (AN[0]=0 means on, rest off)
    // Active-low: 0=enabled, 1=disabled
    assign AN = 4'b1110;
    
endmodule