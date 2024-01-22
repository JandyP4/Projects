module comparator_4bit_simple_df(Eq,Gt,Lt,A,B);

input [3:0]A,B;
output Eq,Gt,Lt;//Equal to, Greater than, Less than

assign Eq = (A == B);
assign Gt = (A > B);
assign Lt = (A < B);

//could also write assign {Eq, Gt, Lt} = {(A == B),(A > B),(A < B)};

endmodule