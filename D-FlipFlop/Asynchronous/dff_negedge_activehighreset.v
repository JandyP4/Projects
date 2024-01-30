module dff_negedge_activehighreset(Q,D,Clk,Rst)

input D,Clk,Rst;
output reg Q;

always@(negedge Clk or posedge Rst) //Negedge is the most used kind of clock as noise typically spikes up.
        if(Rst)
                Q <= 1'b0;
        else
                Q <= D;

endmodule