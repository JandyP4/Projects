module dff_sync_posedge_activelowreset_activehighset(Q,D,Clk,Rst,Set);

input D, Clk, Rst, Set;
output reg Q;

always@(posedge Clk) //Synchronous because only updates with clock edge.
        if(!Rst)//typically used
                Q <= 1'b0;
        else if(Set)
                Q <= 1'b1;
        else
                Q <= D;

endmodule