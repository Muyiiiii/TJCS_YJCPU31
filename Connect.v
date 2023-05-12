`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/06 17:21:01
// Design Name: 
// Module Name: Connect
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Connect(
    input clk,
    input ena,
    input [31:0]pc,
    input [31:0]ins,
    output [31:0]connect_out
    );

    assign connect_out = {pc[31:28],ins[25:0],2'b00};

endmodule
