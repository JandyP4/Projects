module mux_4to1_df(Y,I,S); //Dataflow style used typically when boolean expression is known

input [3:0]I; //four bit input
input [1:0]S; //two selector bit

output Y; //one output

assign Y = I[S]; //We can use the value of S (0 through 3 decimal) to select which bit of I to pass to Y


endmodule