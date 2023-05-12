`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/06 16:42:43
// Design Name: 
// Module Name: EXT
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


module EXT(
    input clk,
    input ena,
    input [4:0]op,
    input [31:0]ins,
    output reg [31:0]ext_out
    );

    reg [17:0]tmp;

    always @(*)begin
        if(ena)begin
            if(ins[31:26]==6'b00_0000)begin
                case(ins[5:0])
                    6'b10_0000:begin
                        //op=ADD;
                    end
                    6'b10_0001:begin
                        //op=ADDU;
                    end
                    6'b10_0010:begin
                        //op=SUB;
                    end
                    6'b10_0011:begin
                        //op=SUBU;
                    end
                    6'b10_0100:begin
                        //op=AND;
                    end
                    6'b10_0101:begin
                        //op=OR;
                    end
                    6'b10_0110:begin
                        //op=XOR;
                    end
                    6'b10_0111:begin
                        //op=NOR;
                    end
                    6'b10_1010:begin
                        //op=SLT;
                    end
                    6'b10_1011:begin
                        //op=SLTU;
                    end
                    6'b00_0000:begin
                        //op=SLL;
                        ext_out<=$unsigned(ins[10:6]);
                    end
                    6'b00_0010:begin
                        //op=SRL;
                        ext_out<=$unsigned(ins[10:6]);
                    end
                    6'b00_0011:begin
                        //op=SRA;
                        ext_out<=$unsigned(ins[10:6]);
                    end
                    6'b00_0100:begin
                        //op=SLLV;
                    end
                    6'b00_0110:begin
                        //op=SRLV;
                    end
                    6'b00_0111:begin
                        //op=SRAV;
                    end
                    6'b00_1000:begin
                        //op=JR;
                    end
                endcase
            end
            else begin
                case(ins[31:26])
                    6'b00_1000:begin
                        //op=ADDI;
                        ext_out<=$signed(ins[15:0]);
                    end
                    6'b00_1001:begin
                        //op=ADDIU;
                        ext_out<=$signed(ins[15:0]);
                    end
                    6'b00_1100:begin
                        //op=ANDI;
                        ext_out<=$unsigned(ins[15:0]);
                    end
                    6'b00_1101:begin
                        //op=ORI;
                        ext_out<=$unsigned(ins[15:0]);
                    end
                    6'b00_1110:begin
                        //op=XORI;
                        ext_out<=$unsigned(ins[15:0]);
                    end
                    6'b10_0011:begin
                        //op=LW;
                        ext_out<=$unsigned(ins[15:0]);
                    end
                    6'b10_1011:begin
                        //op=SW;
                        ext_out<=$unsigned(ins[15:0]);
                    end
                    6'b00_0100:begin
                        //op=BEQ;
                        tmp<={ins[15:0],2'b00};
                        ext_out<=$unsigned(tmp);
                    end
                    6'b00_0101:begin
                        //op=BNE;
                        tmp<={ins[15:0],2'b00};
                        ext_out<=$unsigned(tmp);
                    end
                    6'b00_1010:begin
                        //op=SLTI;
                        ext_out<=$signed(ins[15:0]);
                    end
                    6'b00_1011:begin
                        //op=SLTIU;
                        ext_out<=$signed(ins[15:0]);
                    end
                    6'b00_1111:begin
                        //op=LUI;
                        ext_out<=$unsigned(ins[15:0]);
                    end
                    6'b00_0010:begin
                        //op=J;
                    end
                    6'b00_0011:begin
                        //op=JAI;
                    end
                endcase
            end
        end
    end
    

endmodule
