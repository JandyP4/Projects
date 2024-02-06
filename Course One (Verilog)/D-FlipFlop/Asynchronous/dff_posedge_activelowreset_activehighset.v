module dff_posedge_activelowreset_activehighset (Q,D,Clk,Rst,Set);

input D,Clk,Rst,Set;
output reg Q;

always@(posedge Clk, negedge Rst, posedge Set) 
        if(!Rst) //reset has priority
                Q <= 1'b0;
        else if(set)
                Q <= 1'b1;
        else
                Q <= D;



endmodule