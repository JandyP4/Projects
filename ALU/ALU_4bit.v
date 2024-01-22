module ALU_4bit(x,y,a,b,opcode);

input [3:0]a,b,opcode;
output reg [3:0]x,y;

always@(a,b,opcode)
            case(opcode)
                    4`b0000: x[0] = |a; //Or reduction of a into bit 0 of x
                    4`b0001: x[0] = &a; //And reduction of a into bit 0 of x
                    4`b0010: x[0] = ^a; //Xor reduction of a into bit 0 of x
                    4`b0011: x = a | b; //Or a with b into x
                    4`b0100: x = a & b; //And a with b into x
                    4`b0101: x = a ^ b; //Xor a with b into x
                    4`b0110: x[0] = a > b; //Is a greater than b? T or F in bit 0 of x
                    4`b0111: x[0] = a < b; //Is a less than b? T or F in bit 0 of x
                    4`b1000: x[0] = !a; //Logical not of a into bit 0 of x
                    4`b1001: x[0] = a==b; //Is a equal to b? T or F in bit 0 of x
                    4`b1010: {y[0],x} = a + b; //Add a and b store into x with carry in bit 0 of y
                    4`b1011: x = a - b; //Subtract a minus b store into x
                    4`b1100: {y,x} = a * b; //Multiply a and b into y and x
                    4`b1101: {y,x} = a >> b; //Shift a to the right by b bits
                    4`b1110: {y,x} = a << b; //Shift a to the left by b bits
                    4`b1111: x = ~a; //Not of a into x
                    default: $display("ALU ERROR");
            endcase

endmodule