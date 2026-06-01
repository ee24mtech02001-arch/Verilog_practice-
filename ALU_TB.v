module alutest;
    reg [15:0] x,y;
    wire [15:0] z;
    wire s, zr, p, v,c;
    ALU DUT( .x(x), .y(y), .z(z), .sign(s), .zero(zr), . carry(c), .parity(p), .overflow(v));
    initial 
    begin 
        $dumpfile ("ALU.vcd");
        $dumpvars(0,alutest);
        $monitor("x=%b, y=%b, z=%b, s=%b, zr=%b, c=%b, p=%b, v=%b", x,y,z,s,zr,c,p,v);
         x= 16'h8FFF; y = 16'h8000;
        #5 y = 16'h0FFE; y=16'h0002;
        #5 x= 16'hAAAA; y= 16'h5555;
        #5 $finish;
    end
endmodule 
