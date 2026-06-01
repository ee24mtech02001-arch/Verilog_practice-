module adder4(s,cout,a,b,c);
    input [3:0] a,b;
    input c;

    output [3:0] s;
    wire c1,c2,c3;
    output cout;

    fulladder f1(s[0],c1,a[0],b[0],c);
    fulladder f2(s[1],c2,a[1],b[1],c1);
    fulladder f3(s[2],c3,a[2],b[2],c2);
    fulladder f4(s[3],cout,a[3],b[3],c3);
    endmodule   