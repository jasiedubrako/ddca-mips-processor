module tb_TopModule;

    // ------------------------------------------------
    // DUT interface
    // ------------------------------------------------
    reg  [3:0] a, b;
    wire [6:0] D;
    wire       overflow;

    // ------------------------------------------------
    // Instantiate DUT
    // ------------------------------------------------
    TopModule dut(
        .a(a),
        .b(b),
        .D(D),
        .overflow(overflow)
    );

    // ------------------------------------------------
    // Task: check one addition
    // ------------------------------------------------
    task check;
        input [3:0] in_a, in_b;
        input [6:0] exp_D;
        input       exp_ov;
        begin
            a = in_a; b = in_b; #10;
            if (D === exp_D && overflow === exp_ov)
                $display("  %2d + %2d = %2d  | D=%b  OV=%b  PASS",
                         in_a, in_b, in_a+in_b, D, overflow);
            else
                $display("  %2d + %2d = %2d  | D=%b  OV=%b  FAIL (exp D=%b OV=%b)",
                         in_a, in_b, in_a+in_b, D, overflow, exp_D, exp_ov);
        end
    endtask

    initial begin
        $display("--- TopModule testbench ---");
        $display("   A  +  B  = Sum | D[6:0]   OV | Result");
        $display("------------------------------------------");

        // No overflow cases - sum fits in 4 bits
        check(4'd0,  4'd0,  7'b1000000, 1'b0); // 0+0=0
        check(4'd1,  4'd2,  7'b0110000, 1'b0); // 1+2=3
        check(4'd6,  4'd7,  7'b0100001, 1'b0); // 6+7=13 (D)
        check(4'd9,  4'd6,  7'b0001110, 1'b0); // 9+6=15  (F)
        check(4'd7,  4'd8,  7'b0001110, 1'b0); // 7+8=15  (F)

        // Overflow cases - sum exceeds 15, overflow LED should light
        check(4'd8,  4'd8,  7'b1000000, 1'b1); // 8+8=16 (binary: 10000) ? lower nibble = 0000  (display: 0)
        check(4'd15, 4'd1,  7'b1000000, 1'b1); // 15+1=16 (binary: 10000) ? lower nibble = 0000  (display: 0)
        check(4'd15, 4'd15, 7'b0000110, 1'b1); // 15+15=30 binary: 11110) ? lower nibble = 1110  (display: E)

        $display("------------------------------------------");
        $display("--- Simulation complete ---");
        $finish;
    end

endmodule