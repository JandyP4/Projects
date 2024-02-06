module dlatch_bh(Q,D,En);

input En,D;
output reg Q;

always@(En,Q)
        if(En) Q=D;

endmodule