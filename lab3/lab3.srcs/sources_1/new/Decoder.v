module Decoder(
    input [3:0] in,
    output reg [6:0] D
);

// D[6:0] maps to segments: D[0]=a, D[1]=b, D[2]=c, D[3]=d, D[4]=e, D[5]=f, D[6]=g
// Active-low: 0 = segment glows, 1 = segment off

    always @(*) begin
        case (in)
            //           gfedcba       
            4'h0: D = 7'b1000000;  // 0
            4'h1: D = 7'b1111001;  // 1
            4'h2: D = 7'b0100100;  // 2
            4'h3: D = 7'b0110000;  // 3
            4'h4: D = 7'b0011001;  // 4
            4'h5: D = 7'b0010010;  // 5
            4'h6: D = 7'b0000010;  // 6
            4'h7: D = 7'b1111000;  // 7
            4'h8: D = 7'b0000000;  // 8
            4'h9: D = 7'b0010000;  // 9
            4'hA: D = 7'b0001000;  // A
            4'hB: D = 7'b0000011;  // B
            4'hC: D = 7'b1000110;  // C
            4'hD: D = 7'b0100001;  // D
            4'hE: D = 7'b0000110;  // E
            4'hF: D = 7'b0001110;  // F
            default: D = 7'b1111111; // all off
        endcase
    end
endmodule
        