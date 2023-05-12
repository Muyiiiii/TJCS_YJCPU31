`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/06 20:19:21
// Design Name: 
// Module Name: ADD2
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


module ADD2(
    input [31:0]pc,
    output [31:0]add2_out
    );

    assign add2_out = pc + 32'd4;//此时pc已经是NPC了

endmodule
