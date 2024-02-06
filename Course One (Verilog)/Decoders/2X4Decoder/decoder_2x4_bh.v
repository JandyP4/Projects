module decoder_2x4_bh(Y,I,En);
input [1:0]I;
input En; //Enable bit

output [3:0]Y;

always@(*) begin
        case({En, I})
            3'b100: Y = 4'b0001;
            3'b101: Y = 4'b0010;
            3'b110: Y = 4'b0100;
            3'b111: Y = 4'b1000;
            3'b000,
            3'b001,
            3'b010,
            3'b011: Y = 4'b0000;
            default: $display("2X4 DECODER ERROR");
        endcase
end
//Note that this is not very efficient in synthesis depending on the synthesis tool used.
endmodule