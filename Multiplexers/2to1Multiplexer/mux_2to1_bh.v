module mux_2to1_bh(Y,I,S); //Behavial style used typically when boolean expression is NOT known

input [1:0]I; //two bit input
input S; //one selector bit

output reg Y; //one output

always@(*) //always when any input changes, hence the *
        if(S)
            Y = I[1]; //typically statements within and IF is bounded by begin and end although only one statement here so no need.
        else
            Y = I[0];
endmodule