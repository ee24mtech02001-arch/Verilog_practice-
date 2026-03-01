module mux16to1(data,sel,out);
   input [15:0] data;
   input [3:0] sel;
   output out;
   wire [3:0] t;
   mux4to1 m0(data[3:0],sel[1:0],t[0]);
   mux4to1 m1(data[7:4],sel[1:0],t[1]);
   mux4to1 m2(data[11:8],sel[1:0],t[2]);
   mux4to1 m3(data[15:12],sel[1:0],t[3]);777
   mux4to1 m5(t[3:0],sel[3:2],out);
endmodule