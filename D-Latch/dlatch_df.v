module dlatch_df(Q,D,En);

input En,D;
output Q;

assign Q = En?D:Q;

endmodule