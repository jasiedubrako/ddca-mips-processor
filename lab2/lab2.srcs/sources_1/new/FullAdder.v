module FullAdder(
    input a,
    input b,
    input ci,
    output s,
    output co
);

    // Intermediate wires
    wire axb;   // A XOR B (shared by both S and CO)
    wire ab;    // A AND B
    wire ci_axb;    // CI AND (A XOR B)
    
    // S = A ^ B ^ CI
    xor(axb, a, b);
    xor(s, axb, ci);
    
    // CO = (A & B) | (CI & (A ^ B))
    and(ab, a, b);
    and(ci_axb, axb, ci);
    or(co, ab, ci_axb);
    
endmodule
    