module dlatch_asyncreset_bh(Q,D,En,Rst);
//This D-Latch has an asynchronous reset.

input En,D,Rst;
output reg Q;

always@(En,Q,Rst)
        if(Rst)
                Q = 1`b0;
        else if(En)
                Q = D;

endmodule