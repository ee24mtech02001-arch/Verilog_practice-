module ripple_add_tb;
    reg  [3:0] a, b;
    reg        m;
    wire [3:0] s;
    wire       c, ov;

    add_sub_4bit uut (
        .x(a),
        .y(b),
        .mode(m),
        .sum(s),
        .carry(c),        // ✅ was .cout(c)
        .overflow(ov)
    );

    initial begin
        $dumpfile("ripple_add.vcd");
        $dumpvars(0, ripple_add_tb);
        $monitor("mode=%b  a=%d  b=%d  =>  s=%d  carry=%b  ov=%b",
                  m, a, b, s, c, ov);

        #5 m=0; a=4'd5; b=4'd3;   // 5 + 3  = 8
        #5 m=0; a=4'd7; b=4'd8;   // 7 + 8  = 15
        #5 m=1; a=4'd5; b=4'd3;   // 5 - 3  = 2
        #5 m=1; a=4'd7; b=4'd8;   // 7 - 8  = wraps to 15
        #5 $finish;
    end
endmodule