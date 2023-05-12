`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/06 19:35:15
// Design Name: 
// Module Name: ADD1
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


module ADD1(
    input [31:0]NPC,
    input [31:0]ext_out,
    output [31:0]add1_out
    );

    assign add1_out = ext_out + NPC;

endmodule
