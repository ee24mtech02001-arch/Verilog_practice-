module ALU(x,y,z, sign , zero, carry, parity, overflow );

    input [15:0]x,y;
    output [15:0] z;
    output sign, zero, carry, parity, overflow;
    wire c1,c2,c3;
    adder4 a1(z[3:0], c1 , x[3:0], y[3:0], 1'b0);
    adder4 a2(z[7:4], c2, x[7:4], y[7:4], 1'b0);
    adder4 a3(z[11:8], c3, x[11:8], y[11:8], 1'b0);
    adder4 a4(z[15:12], carry, x[15:12], y[15:12], 1'b0);

    assign sign =z[15];
    assign zero = ~|z;
    assign parity = ~^z;
    assign overflow = (x[15] & y[15]&~z[15]) | (x[15] & ~y[15] & z[15]);
endmodule 
