`timescale 1ns/1ns
`include "hello.v" //include the module being tested

module hello_tb (); //NOTE no in or out variables as this is a test bench


reg A; //Inputs as Reg
wire B; //Outputs as wire

hello uut(A, B); //Create an instance of unit under test

initial begin

    $dumpfile("hello_tb.vcd"); //Creates a dump file
    $dumpvars(0, hello_tb);

    A = 0;
    #20; //wait 20 ns

    A = 1;
    #20;

    A = 0;
    #20;

    $display("Test Complete"); //Writes this to console


end


endmodule

//Now going to run in powershell "iverilog -o hello_tb.vvp hello_tb.v"
//Once .vvp created run "vvp hello_tb.vvp"
//to view it run "gtkwave" and choose the .vcd file, then append the variables you want to view.