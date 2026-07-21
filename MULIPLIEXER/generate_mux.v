module generate_mux(data, select, out);
    input [3:0] data;
    input [1:0] select;
    output out;

    assign out = data[select];
endmodule