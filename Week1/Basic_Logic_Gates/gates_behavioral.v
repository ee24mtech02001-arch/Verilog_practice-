module gate_behavioural(
    input wire a,
    input wire b,
    output reg  and_y,
    output reg or_y,
    output reg nand_y,
    output reg nor_y,
    output reg xor_y,
);
always@(*)
begin
  assign and_y= a & b;
  assign or_y= a|b;
  assign nand_y= ~(a&b);
  assign nor_y = ~(a|b);
  assign xor_y = a^b;
end

endmodule 