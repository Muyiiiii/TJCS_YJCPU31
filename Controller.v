`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/06 15:19:38
// Design Name: 
// Module Name: Controller
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


module Controller(
    input clk,
    input ena,
    input rst,
    input zero,
    input [31:0]ins,
    output reg [4:0]op,
    output reg ena_MUX1,
    output reg [2:0]choice_MUX1,
    output reg ena_MUX2,
    output reg [2:0]choice_MUX2,
    output reg ena_MUX3,
    output reg [2:0]choice_MUX3,
    output reg ena_MUX4,
    output reg [2:0]choice_MUX4,
    output reg RF_wena,
    output reg [4:0]Rdc,
    output reg [4:0]Rsc,
    output reg [4:0]Rtc,
    //DMEM
    output reg DM_ena,
    //好像没用
    output reg DM_worr
    );

    parameter ADD = 5'b00000;
    parameter ADDU = 5'b00001;
    parameter SUB = 5'b00010;
    parameter SUBU = 5'b00011;
    parameter AND = 5'b00100;
    parameter OR = 5'b00101;
    parameter XOR = 5'b00110;
    parameter NOR = 5'b00111;
    parameter SLT = 5'b01000;
    parameter SLTU = 5'b01001;
    parameter SLL = 5'b01010;
    parameter SRL = 5'b01011;
    parameter SRA = 5'b01100;
    parameter SLLV = 5'b01101;
    parameter SRLV = 5'b01110;
    parameter SRAV = 5'b01111;
    parameter JR = 5'b10000;

    parameter ADDI = 5'b10001;
    parameter ADDIU = 5'b10010;
    parameter ANDI = 5'b10011;
    parameter ORI = 5'b10100;
    parameter XORI = 5'b10101;
    parameter LW = 5'b10110;
    parameter SW = 5'b10111;
    parameter BEQ = 5'b11000;
    parameter BNE = 5'b11001;
    parameter SLTI = 5'b11010;
    parameter SLTIU = 5'b11011;
    parameter LUI = 5'b11100;

    parameter J = 5'b11101;
    parameter JAI = 5'b11110;

    always @(*)begin
        if(ena)begin
            if(ins[31:26]==6'b00_0000)begin
                case(ins[5:0])
                    6'b10_0000:begin
                        op=ADD;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[15:11];
                        Rsc<=ins[25:21];
                        Rtc<=ins[20:16];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd1;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;
                    end
                    6'b10_0001:begin
                        op=ADDU;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[15:11];
                        Rsc<=ins[25:21];
                        Rtc<=ins[20:16];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd1;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;

                    end
                    6'b10_0010:begin
                        op=SUB;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[15:11];
                        Rsc<=ins[25:21];
                        Rtc<=ins[20:16];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd1;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;

                    end
                    6'b10_0011:begin
                        op=SUBU;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[15:11];
                        Rsc<=ins[25:21];
                        Rtc<=ins[20:16];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd1;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;
                    end
                    6'b10_0100:begin
                        op=AND;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[15:11];
                        Rsc<=ins[25:21];
                        Rtc<=ins[20:16];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd1;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;

                    end
                    6'b10_0101:begin
                        op=OR;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[15:11];
                        Rsc<=ins[25:21];
                        Rtc<=ins[20:16];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd1;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;
                    end
                    6'b10_0110:begin
                        op=XOR;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[15:11];
                        Rsc<=ins[25:21];
                        Rtc<=ins[20:16];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd1;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;
                    end
                    6'b10_0111:begin
                        op=NOR;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[15:11];
                        Rsc<=ins[25:21];
                        Rtc<=ins[20:16];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd1;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;

                    end
                    6'b10_1010:begin
                        op=SLT;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[15:11];
                        Rsc<=ins[25:21];
                        Rtc<=ins[20:16];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd1;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;
                    end
                    6'b10_1011:begin
                        op=SLTU;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[15:11];
                        Rsc<=ins[25:21];
                        Rtc<=ins[20:16];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd1;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;
                    end
                    6'b00_0000:begin
                        op=SLL;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[15:11];
                        Rtc<=ins[20:16];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd2;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd1;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;

                    end
                    6'b00_0010:begin
                        op=SRL;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[15:11];
                        Rtc<=ins[20:16];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd2;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd1;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;
                    end
                    6'b00_0011:begin
                        op=SRA;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[15:11];
                        Rtc<=ins[20:16];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd2;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd1;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;
                    end
                    6'b00_0100:begin
                        op=SLLV;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[15:11];
                        Rsc<=ins[25:21];
                        Rtc<=ins[20:16];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd1;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;
                    end
                    6'b00_0110:begin
                        op=SRLV;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[15:11];
                        Rsc<=ins[25:21];
                        Rtc<=ins[20:16];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd1;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;
                    end
                    6'b00_0111:begin
                        op=SRAV;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[15:11];
                        Rsc<=ins[25:21];
                        Rtc<=ins[20:16];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd1;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;
                    end
                    6'b00_1000:begin
                        op=JR;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd3;
                        
                        RF_wena<=1'b0;
                        Rsc<=ins[25:21];

                        ena_MUX2<=1'b0;
                        ena_MUX3<=1'b0;
                        ena_MUX4<=1'b0;

                        DM_ena=1'b0;
                    end
                endcase
            end
            else begin
                case(ins[31:26])
                    6'b00_1000:begin
                        op=ADDI;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[20:16];
                        Rsc<=ins[25:21];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd2;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;

                    end
                    6'b00_1001:begin
                        op=ADDIU;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[20:16];
                        Rsc<=ins[25:21];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd2;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;
                    end
                    6'b00_1100:begin
                        op=ANDI;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[20:16];
                        Rsc<=ins[25:21];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd2;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;

                    end
                    6'b00_1101:begin
                        op=ORI;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[20:16];
                        Rsc<=ins[25:21];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd2;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;
                    end
                    6'b00_1110:begin
                        op=XORI;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[20:16];
                        Rsc<=ins[25:21];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd2;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;
                    end
                    6'b10_0011:begin
                        op=LW;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[20:16];
                        Rsc<=ins[25:21];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd2;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd2;

                        DM_ena=1'b1;
                        DM_worr=1'b0;

                    end
                    6'b10_1011:begin
                        op=SW;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b0;
                        Rtc<=ins[20:16];
                        Rsc<=ins[25:21];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd2;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd2;

                        DM_ena=1'b1;
                        DM_worr=1'b1;
                    end
                    6'b00_0100:begin
                        op=BEQ;

                        ena_MUX1<=1'b1;
                        // choice_MUX1<=zero?3'd4:3'd1;
                        if(zero==1'b1) begin
                            choice_MUX1<=3'd4;
                        end
                        else begin
                            choice_MUX1<=3'd1;
                        end
                        
                        RF_wena<=1'b0;
                        Rsc<=ins[25:21];
                        Rtc<=ins[20:16];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd1;

                        ena_MUX4<=1'b0;

                        DM_ena=1'b0;
                    end
                    6'b00_0101:begin
                        op=BNE;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=zero?3'd1:3'd4;
                        
                        RF_wena<=1'b0;
                        Rsc<=ins[25:21];
                        Rtc<=ins[20:16];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd1;

                        ena_MUX4<=1'b0;

                        DM_ena=1'b0;
                    end
                    6'b00_1010:begin
                        op=SLTI;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[20:16];
                        Rsc<=ins[25:21];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd2;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;
                    end
                    6'b00_1011:begin
                        op=SLTIU;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[20:16];
                        Rsc<=ins[25:21];

                        ena_MUX2<=1'b1;
                        choice_MUX2<=3'd1;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd2;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;
                    end
                    6'b00_1111:begin
                        op=LUI;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd1;
                        
                        RF_wena<=1'b1;
                        Rdc<=ins[20:16];

                        ena_MUX2<=1'b0;
                        ena_MUX3<=1'b1;
                        choice_MUX3<=3'd2;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd3;

                        DM_ena=1'b0;

                    end
                    6'b00_0010:begin
                        op=J;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd2;
                        
                        RF_wena<=1'b0;

                        ena_MUX2<=1'b0;
                        ena_MUX3<=1'b0;
                        ena_MUX4<=1'b0;

                        DM_ena=1'b0;
                    end
                    6'b00_0011:begin
                        op=JAI;

                        ena_MUX1<=1'b1;
                        choice_MUX1<=3'd2;
                        
                        RF_wena<=1'b1;
                        Rdc<=5'd31;//这是ra寄存器的位置

                        ena_MUX2<=1'b0;
                        ena_MUX3<=1'b0;

                        ena_MUX4<=1'b1;
                        choice_MUX4<=3'd4;

                        DM_ena=1'b0;
                    end
                endcase
            end
        end
    end
endmodule

