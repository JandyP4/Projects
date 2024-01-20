module comparator_4bit_df(Eq,Gt,Lt,A,B)

input [3:0]A,B;
output Eq,Gt,Lt;//Equal to, Greater than, Less than

assign Eq = &(A ~^ B); //And all bits of A Xored with B, A == B
assign Gt = (A[3]& ~B[3]) | ((A[3] ~^ B[3]) & (A[2]& ~B[3])) 
| ((A[3] ~^ B[3]) & (A[2] ~^ B[3]) & (A[1]& ~B[1])) 
| ((A[3] ~^ B[3]) & (A[2] ~^ B[3]) & (A[1] ~^ B[1]) & (A[0]& ~B[0]));
assign Lt = ~(Gt | Eq);

endmodule