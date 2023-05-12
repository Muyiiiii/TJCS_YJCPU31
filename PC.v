`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/05 16:03:07
// Design Name: 
// Module Name: PC
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


module PC(
    input clk,
    input rst,
    input ena,
    input [31:0]pc_in,
    output reg [31:0]pc_next//新的pc
    );

    //使用下降沿，确保原先的pc先给出去
    always @(negedge clk or posedge rst) begin
        if(rst)begin
            pc_next<=32'h0040_0000;
        end
        else begin
            if(ena)begin
                pc_next<=pc_in;
            end
        end
    end

endmodule
