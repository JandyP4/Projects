`timescale 1ns/1ns
`include "ALU_4bit.v"

module ALU_4bit_tb();

reg [3:0]a,b,opcode;
wire [3:0]x,y;

ALU_4bit ALU_uut(x,y,a,b,opcode);

initial begin
    $dumpfile("ALU_4bit_tb.vcb");
    $dumpvars(0, ALU_4bit_tb);
    a = 0;
    b = 0;
    opcode = 0;
    repeat(16) begin
        #10 a = a + 1;
        repeat (16) begin
            #10 b = b + 1;
            repeat(16) begin
                #10 opcode = opcode + 1;
            end
        end
    end


end

endmodule