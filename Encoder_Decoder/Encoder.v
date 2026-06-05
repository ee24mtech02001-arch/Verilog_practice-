module encoder_4to2(
    input [3:0] A,
    output wire [1:0] y

);

assign y[1] = A[2] | A[3];
assign y[0] = A[1] | A[3];

endmodule 
