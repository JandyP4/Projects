`timescale 1ns/1ns
`include "bit4_fulladder_bh.v"

module bit4_fulladder_bh_tb();
reg [3:0]a, b;
reg cin;

wire [3:0]s;
wire cout;

bit4_fulladder_bh fa4_uut(s, cout, a, b, cin);





initial begin
        //$monitor("time=%d \t a=%b \t b=%b \t cin=%b \t s=%b \t cout=%b", $time,a,b,cin,s,cout);
        $dumpfile("bit4_fulladder_bh_tb.vcb");
        $dumpvars(0, bit4_fulladder_bh_tb);
        a=0;
        b=0;
        cin=0;
        repeat(16) begin
                #10 a=a+1;
                repeat(16) begin
                        #10 b=b+1;
                        repeat(2)
                            #10 cin = ~cin;
                end
        end
end


endmodule
