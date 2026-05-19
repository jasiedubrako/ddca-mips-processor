module tb_FourBitAdder;

    // Inputs
    reg [3:0] a, b;
    
    // Outputs
    wire [4:0] s;
    
    // Instantiate DUT
    FourBitAdder dut(
        .a(a),
        .b(b),
        .s(s)
    );
    
    // Stimulus
    initial begin
        $display("   A  +   B  =    S   (decimal check)");
        $display("--------------------------------------");

        // Corner cases first
        a = 4'd0;  b = 4'd0;  #10;
        $display("  %2d  +  %2d  =  %2d    %s", a, b, s,
                 (s == a + b) ? "PASS" : "FAIL");

        a = 4'd15; b = 4'd0;  #10;
        $display("  %2d  +  %2d  =  %2d    %s", a, b, s,
                 (s == a + b) ? "PASS" : "FAIL");

        a = 4'd15; b = 4'd15; #10;
        $display("  %2d  +  %2d  =  %2d    %s", a, b, s,
                 (s == a + b) ? "PASS" : "FAIL");

        a = 4'd15; b = 4'd1;  #10;
        $display("  %2d  +  %2d  =  %2d    %s", a, b, s,
                 (s == a + b) ? "PASS" : "FAIL");

        // A few representative mid-range cases
        a = 4'd6;  b = 4'd7;  #10;
        $display("  %2d  +  %2d  =  %2d    %s", a, b, s,
                 (s == a + b) ? "PASS" : "FAIL");

        a = 4'd9;  b = 4'd5;  #10;
        $display("  %2d  +  %2d  =  %2d    %s", a, b, s,
                 (s == a + b) ? "PASS" : "FAIL");

        a = 4'd3;  b = 4'd11; #10;
        $display("  %2d  +  %2d  =  %2d    %s", a, b, s,
                 (s == a + b) ? "PASS" : "FAIL");

        a = 4'd8;  b = 4'd8;  #10;
        $display("  %2d  +  %2d  =  %2d    %s", a, b, s,
                 (s == a + b) ? "PASS" : "FAIL");

        $display("--------------------------------------");
        $display("Simulation complete.");
        $finish;
    end
endmodule
    