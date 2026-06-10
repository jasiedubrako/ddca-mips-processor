module tb_Decoder;

    // ------------------------------------------------
    // DUT interface
    // ------------------------------------------------
    reg  [3:0] in;
    wire [6:0] D;
    
    // ------------------------------------------------
    // Instantiate DUT
    // ------------------------------------------------
    Decoder dut(
        .in(in),
        .D(D)
    );
    
    // ------------------------------------------------
    // Task: check one input and print result
    // ------------------------------------------------
    
    task check;
        input [3:0] val;
        input [6:0] expected;
        input [7:0] symbol; // ASCII character for display
        begin
            in = val; #10;
            if (D === expected)
                $display(" %s (0x%h): D=%b PASS", symbol, val, D);
            else
                $display(" %s (0x%h): D=%b FAIL (expected %b)", symbol, val, D, expected);
        end
     endtask

    // ------------------------------------------------
    // Stimulus - test all 16 hex digits
    // ------------------------------------------------
    initial begin
        $display("--- Decoder testbench ---");
        $display("  Symbol | D[6:0] (gfedcba) | Result");
        $display("---------------------------------");

        //    input  expected  symbol
        check(4'h0, 7'b1000000, "0");
        check(4'h1, 7'b1111001, "1");
        check(4'h2, 7'b0100100, "2");
        check(4'h3, 7'b0110000, "3");
        check(4'h4, 7'b0011001, "4");
        check(4'h5, 7'b0010010, "5");
        check(4'h6, 7'b0000010, "6");
        check(4'h7, 7'b1111000, "7");
        check(4'h8, 7'b0000000, "8");
        check(4'h9, 7'b0010000, "9");
        check(4'hA, 7'b0001000, "A");
        check(4'hB, 7'b0000011, "B");
        check(4'hC, 7'b1000110, "C");
        check(4'hD, 7'b0100001, "D");
        check(4'hE, 7'b0000110, "E");
        check(4'hF, 7'b0001110, "F");

        $display("---------------------------------");
        $display("--- Simulation complete ---");
        $finish;
    end 
endmodule