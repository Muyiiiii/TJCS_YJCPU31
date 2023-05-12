`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/05 10:49:06
// Design Name: 
// Module Name: DMEM
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


module DMEM(
    input clk,//时钟
    input ena,
    input worr,//write_or_read 写为1，读为0
    input [4:0]addr,//操作的内存的地址
    input [31:0]wdata,//写入的数据
    output [31:0]rdata//读取到的数据
    );

    reg [31:0]mem[0:31];//当作外存,是32位的地址线组成的32数据存储器

    always @(posedge clk)begin 
        if(worr && ena) begin
            mem[addr]<=wdata;
        end
    end

    assign rdata=(worr==1'b0&&ena)?mem[addr]:32'dz;

endmodule
