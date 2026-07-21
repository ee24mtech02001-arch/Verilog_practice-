module generate_set_mux(a,b, sel, out):
    input [3:0] a,b;
    input [1:0] sel;
    output out;

    assign out = sel ? b : a;  

endmodule