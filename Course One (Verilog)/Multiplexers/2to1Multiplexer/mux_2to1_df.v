module mux_2to1_df(Y,I,S); //Dataflow style used typically when boolean expression is known

input [1:0]I; //two bit input
input S; //one selector bit

output Y; //one output

assign Y = S?I[1]:I[0]; //Here we are using a conditional statement ("?") in order to check if S is true or false (1 or 0). . .
                        //then using that to select which input to pass to Y. IF S = 1 then Y = I[1], IF S = 0 then Y = I[0] 


endmodule