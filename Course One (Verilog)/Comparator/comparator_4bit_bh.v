module comparator_4bit_bh(Eq,Gt,Lt,A,B);

input [3:0]A,B;
output reg Eq,Gt,Lt;//Equal to, Greater than, Less than

always@(*) begin

        Eq = (A == B);
        Gt = (A > B);
        Lt = (A < B);

end

endmodule