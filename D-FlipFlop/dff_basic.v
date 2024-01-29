module dff_basic(Q,D,Clk);

input D,Clk;
output reg Q;

always@(posedge Clk) //Triggers at positive edge of clock
        if(Clk)
                Q <= D; //Note the Non-blocking assignment opperator

endmodule