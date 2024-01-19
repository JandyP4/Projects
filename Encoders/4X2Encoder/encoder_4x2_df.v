module encoder_4x2_df(Y,V,I);

input [3:0]I;
output [1:0]Y;
output V; //Validation bit

assign Y = {I[3] | I[2], I[3] | I[1]};
assign V = |I; //All bits of I ored together

//this could also be written in one statement assign {V,Y} = {|I, I[3] | I[2], I[3] | I[1]}
endmodule