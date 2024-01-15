`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: bcdTB
//////////////////////////////////////////////////////////////////////////////////



module bcdTB(
    );
    
    logic clk,rst;
    logic [3:0] out;
    
    bcdCount myBCDcounter (.clk(clk), .rst(rst), .out(out));
    
    always #20 clk = ~clk;
    
    initial begin
        clk = 1'b0;
        rst = 1'b0;
        #5 rst = 1'b1;
        #5 rst = 1'b0;
        
        #1000
        $finish;
    end
endmodule
