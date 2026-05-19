module tb_FullAdder();

    reg a, b, ci;
    wire s, co;
    
    // Instantiating the Device Under test (DUT)
    FullAdder dut(
        .a(a),
        .b(b),
        .ci(ci),
        .s(s),
        .co(co)
    );
    
    
    // Stimulus - apply all 8 input combinations
    initial begin
        $display("CI B  A  | CO S");
        $display("---------|-----");

        // Test all 8 combinations exhaustively
        {ci, b, a} = 3'b000; #10;
        $display(" %b  %b  %b  |  %b  %b", ci, b, a, co, s);

        {ci, b, a} = 3'b001; #10;
        $display(" %b  %b  %b  |  %b  %b", ci, b, a, co, s);

        {ci, b, a} = 3'b010; #10;
        $display(" %b  %b  %b  |  %b  %b", ci, b, a, co, s);

        {ci, b, a} = 3'b011; #10;
        $display(" %b  %b  %b  |  %b  %b", ci, b, a, co, s);

        {ci, b, a} = 3'b100; #10;
        $display(" %b  %b  %b  |  %b  %b", ci, b, a, co, s);

        {ci, b, a} = 3'b101; #10;
        $display(" %b  %b  %b  |  %b  %b", ci, b, a, co, s);

        {ci, b, a} = 3'b110; #10;
        $display(" %b  %b  %b  |  %b  %b", ci, b, a, co, s);

        {ci, b, a} = 3'b111; #10;
        $display(" %b  %b  %b  |  %b  %b", ci, b, a, co, s);

        $display("---------|-----");
        $display("Simulation complete.");
        $finish;
    end
endmodule
