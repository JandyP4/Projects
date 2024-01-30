module dff_sync_posedge_activehighreset(Q,D,Clk,Rst);

input D, Clk, Rst;
output reg Q;

always@(posedge Clk) //Synchronous because only updates with clock edge.
        if(Rst)
                Q <= 1'b0;
        else
                Q <= D;

endmodule