module enc_dec_tb;
    reg [3:0] A;
    wire [1:0] y;
    wire [3:0] dec_out; 
    encoder_4to2 enc(.A(A), .y(y));
    decoder_2to4 dec(.in(y), .out(dec_out));    
    initial begin
        $dumpfile("enc_dec.vcd");
        $dumpvars(0, enc_dec_tb);
        $monitor("A=%b  Encoded y=%b  Decoded out=%b", A, y, dec_out);
        A = 4'b0000; // Initial input
        #10 A = 4'b0001; // Test case 1
        #10 A = 4'b0100; // Test case 2
        #10 A = 4'b0010; // Test case 3
        #10 A = 4'b1000; // Test case 4
        #10 A = 4'b1111; // Test case 5 (all bits high)
        #10 $finish; // End simulation
    end

endmodule