`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: bcdCount
// Description: 
// A BCD (Binary-Coded Decimal) counter is a type of electronic counter circuit
// used in digital electronics. 
// In BCD counting, each decimal digit is represented by its 4-bit binary equivalent. 
// This means that in a BCD counter, the count is represented in binary form, where each digit of the count is encoded using four binary bits.


// 
//////////////////////////////////////////////////////////////////////////////////


module bcdCount(
    input logic clk,
    input logic rst,
    output logic [3:0] out
    );
    
    
    always_ff @(posedge clk, posedge rst) begin
        if(rst) begin
            out <= 4'b0000;
        end
        else if (out == 4'b1001) begin
            out <= 4'b0000;
        end
        else begin
            out <= out + 4'b0001;
        end
    end
endmodule
