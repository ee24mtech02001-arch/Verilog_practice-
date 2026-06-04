module full_add(
    output sum,
    output cout,
    input x,y,cin
);
assign sum = x^y^cin;
assign cout= x&y | y&cin | x&cin;
endmodule 
