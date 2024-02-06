module barrel_shifter_8bit_bh(Out, In, Lr, n);

input [7:0]In;
input [2:0]n; //How many bits to shift
input Lr; //Left(1) or Right(0)
output reg [7:0]Out;

always@(*) begin
        if(Lr)
            Out = In << n;
        else
            Out = In >> n;

end


endmodule