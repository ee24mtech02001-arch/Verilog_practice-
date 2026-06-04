module add_sub_4bit(
    input [3:0] x,y,
    input mode,
    
    output [3:0]sum,
    output carry,overflow
);
    wire c1,c2,c3,cin,cout;
    wire [3:0] y_xor;

    assign y_xor = y ^{4{mode}};
    assign cin= mode;



    full_add f0(sum[0],c1,x[0],y_xor[0],cin);
    full_add f1(sum[1], c2, x[1],y_xor[1],c1);
    full_add f2(sum[2], c3, x[2],y_xor[2],c2);
    full_add f3(sum[3], cout, x[3],y_xor[3],c3);
    assign carry = cout;
    assign overflow = c3^cout;
    
endmodule 

    