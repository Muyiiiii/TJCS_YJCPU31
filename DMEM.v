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
    input clk,//ʱ��
    input ena,
    input worr,//write_or_read дΪ1����Ϊ0
    input [4:0]addr,//�������ڴ�ĵ�ַ
    input [31:0]wdata,//д�������
    output [31:0]rdata//��ȡ��������
    );

    reg [31:0]mem[0:31];//�������,��32λ�ĵ�ַ����ɵ�32���ݴ洢��

    always @(posedge clk)begin 
        if(worr && ena) begin
            mem[addr]<=wdata;
        end
    end

    assign rdata=(worr==1'b0&&ena)?mem[addr]:32'dz;

endmodule
