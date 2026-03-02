module tb_gates;
reg a,b;
wire and_y,or_y,not_y,nand_y,nor_y,xor_y;
gates_dataflow uut (
    .a(a),
    .b(b),
    .and_y(and_y),
    .or_y(or_y),
    .not_y(not_y),
    .nand_y(nand_y),
    .nor_y(nor_y),
    .xor_y(xor_y)
);

initial begin
    $dumpfile("gates.vcd");
    $dumpvars(0, tb_gates);
    $display("a b | AND OR NOT NAND NOR XOR");
    $monitor("%b %b |  %b   %b   %b    %b    %b   %b",
              a, b, and_y, or_y, not_y,
              nand_y, nor_y, xor_y);

    // Apply test cases
    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;

    $finish;
end

endmodule