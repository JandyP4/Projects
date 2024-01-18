module mux_4to1_bh(Y,I,S); //Behavial style used typically when boolean expression is NOT known

input [3:0]I; //four bit input
input [1:0]S; //two selector bit

output reg Y; //one output

always@(*) //always when any input changes, hence the *
        case(S) //Here we use a case statement to select the bit of I using the decimal value of S. Note: this does not give "priority" to any of the selections.
            2'd0: Y = I[0];
            2'd1: Y = I[1];
            2'd2: Y = I[2];
            2'd3: Y = I[3];
            default:$display("FOUR TO ONE MUX ERROR"); //this error can tell us in simulation where the problem is.
        endcase
endmodule