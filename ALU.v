`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/05 15:22:17
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [31:0] a,
    input [31:0] b,
    input [4:0] aluc,
    output reg [31:0] r,
    output reg zero,
    output reg carry,
    output reg negative,
    output reg overflow
    );
    
    parameter WIDTH = 32;
    parameter MSB = WIDTH-1;
    reg extra;
    reg [32:0]tmp;
    wire signed [31:0]signed_a=a,signed_b=b;
    //wire zero_sub,carry_sub,negative_sub,overflow_sub;
    //wire [31:0] result [13:0];

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
    parameter JAi = 5'b11110;

    always@(*) begin
        case(aluc)
        //ADDU
            ADDU:begin
                {extra,r}<=a+b;
    
                zero<=r?0:1;
                carry<=extra;
                negative<=r[MSB];
                //无overflow
            end
        //LW SW
            LW,
            SW:begin
                {extra,r}<=signed_a+signed_b/4;
    
                zero<=r?0:1;
                //无carry
                negative<=r[MSB];
                overflow<=({extra,r[MSB]}==2'b01||{extra,r[MSB]}==2'b11);
            end
        //ADD ADDI ADDIU    
            ADD,
            ADDI,
            ADDIU:begin
                {extra,r}<=signed_a+signed_b;
    
                zero<=r?0:1;
                //无carry
                negative<=r[MSB];
                overflow<=({extra,r[MSB]}==2'b01||{extra,r[MSB]}==2'b11);
            end
        //SUBU
            SUBU:begin
                {extra,r}<=a-b;
    
                zero<=r?0:1;
                carry<=extra;
                negative<=r[MSB];
                //无overflow
            end
        //SUB BEQ BNE
            BEQ,
            BNE,
            SUB:begin
                {extra,r}<=signed_a-signed_b;
            
                zero<=r?1'b0:1'b1;
                //无carry
                negative<=r[MSB];
                overflow<=({extra,r[MSB]}==2'b01||{extra,r[MSB]}==2'b11);
            end
        //AND ANDI
            ANDI,
            AND:begin
                r<=a&b;
    
                zero<=r?0:1;
                //无carry
                negative<=r[MSB];
                //无overflow
            end
        //OR ORI
            ORI,
            OR:begin
                r<=a|b;
    
                zero<=r?0:1;
                //无carry
                negative<=r[MSB];
                //无overflow
            end
        //XOR XORI
            XORI,
            XOR:begin   
                r<=a^b;
    
                zero<=r?0:1;
                //无carry
                negative<=r[MSB];
                //无overflow
            end
        //NOR
            NOR:begin
                r<=~(a|b);
    
                zero<=r?0:1;
                //无carry
                negative<=r[MSB];
                //无overflow
            end
        //LUI
            LUI:begin
                r<={b[15:0],16'b0};
    
                zero<=r?0:1;
                //无carry
                negative<=r[MSB];
                //无overflow
            end
        //SLTIU SLTU
            SLTU,
            SLTIU:begin
                r<=(a<b)?32'b1:32'b0;
                zero<=(a==b)?0:1;
                negative<=r[0];
            end
        //SLT SLTI
            SLTI,
            SLT:begin
                if(a[MSB]==b[MSB]) begin
                    r<=(a<b)?32'b1:32'b0;
                end
                else begin
                    if(a[MSB]==0) begin
                        r<=32'b0;
                    end
                    else begin
                        r<=32'b1;
                    end
                end
            
                zero<=(a==b)?0:1;
                //无carry
                negative<=r[0];
                //无overflow
            end
        //SLTU
            SLTU:begin
                r<=(a<b)?1:0;
    
                zero<=(a==b)?0:1;
                carry<=r;
                negative<=r[MSB];
                //无overflow
            end
        //SRA
            SRA:begin
                r<=signed_b>>>signed_a;
    
                zero<=r?0:1;
                carry<=signed_b[signed_a-1];
                negative<=r[MSB];
                //无overflow
            end
        //SRAV
            SRAV:begin
                r<=signed_b>>>signed_a[4:0];
    
                zero<=r?0:1;
                carry<=signed_b[WIDTH-signed_a];
                negative<=r[MSB];
                //无overflow
            end
        //SLL
            SLL:begin
                r<=b<<a;
    
                zero<=r?0:1;
                carry<=b[WIDTH-a];
                negative<=r[MSB];
                //无overflow
            end
        //SLLV
            SLLV:begin
                r<=b<<a[4:0];
    
                zero<=r?0:1;
                carry<=b[WIDTH-a];
                negative<=r[MSB];
                //无overflow
            end
        //SRL
            SRL:begin
                r<=b>>a;
    
                zero<=r?0:1;
                carry<=b[a-1];
                negative<=r[MSB];
                //无overflow
            end
        //SRLV
            SRLV:begin
                r<=b>>a[4:0];
    
                zero<=r?0:1;
                carry<=b[a-1];
                negative<=r[MSB];
                //无overflow
            end
        endcase
    end

    //assign r=result[aluc];
    
endmodule

