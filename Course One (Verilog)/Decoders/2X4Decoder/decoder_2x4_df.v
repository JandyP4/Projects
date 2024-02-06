module decoder_2x4_df (Y,I,En);
input [1:0]I;
input En; //Enable bit

output [3:0]Y;

assign Y = {En & I[1] & I[0],
            En & I[1] & ~I[0],
            En & ~I[1] & I[0],
            En & ~I[1] & ~I[0]}; //If En is zero then Y = 0000 otherwise depending on what I equals Y with have a single bit high on one of 4 digits. (1000, 0100, 0010, 0001)

endmodule