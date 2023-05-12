`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/05 10:49:21
// Design Name: 
// Module Name: cpu
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


module CPU(
    input clk,
    input rst,//屁悶議嶷崔
    input ena,
    //IMEM
    input [31:0]ins,
    //DMEM
    output DM_worr,
    output [4:0]DM_addr,//荷恬議坪贋議仇峽
    output [31:0]DM_wdata,//亟秘議方象
    input [31:0]DM_rdata,//響函欺議方象
    output DM_ena,
    //regfile
    //ALU
    //PC
    output [31:0]pc//和匯倖峺綜議仇峽峺寞
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
    parameter JAi = 5'b11110;



    //regfile
    //篠贋匂
    wire RF_wena;//篠贋匂亟秘議聞嬬極
    wire [4:0]Rdc;
    wire [4:0]Rsc;
    wire [4:0]Rtc;
    wire [31:0]Rd;
    wire [31:0]Rs;
    wire [31:0]Rt;
    //ALU
    wire [31:0]aluc_r;
    wire zero;
    wire carry;
    wire negative;
    wire overflow;
    //Controller
    wire [4:0]op;
    //EXT
    wire [31:0]ext_out;
    //Connect
    wire [31:0]connect_out;
    //MUX
    wire ena_MUX1;
    wire [31:0]out_MUX1;
    wire [2:0]choice_MUX1;
    wire ena_MUX2;
    wire [31:0]out_MUX2;
    wire [2:0]choice_MUX2;
    wire ena_MUX3;
    wire [31:0]out_MUX3;
    wire [2:0]choice_MUX3;
    wire ena_MUX4;
    wire [31:0]out_MUX4;
    wire [2:0]choice_MUX4;
    //ADD
    wire [31:0]add1_out;
    wire [31:0]add2_out;
    //clk
    // wire clk_10;
    //NPC
    wire [31:0]NPC=pc+32'd4;

    //DMEM
    assign DM_addr = aluc_r[4:0];
    assign DM_wdata = Rt;

    //PcReg
    PC PC_inst(
        .clk(clk),
        .rst(rst),
        .ena(ena),
        .pc_in(out_MUX1),
        .pc_next(pc)
    );


    //regfile
    //篠贋匂
    assign Rd = out_MUX4;
    regfile cpu_ref(
        .ena(ena),
        .rst(rst),
        .clk(clk),
        .write_ena(RF_wena),
        .Rdc(Rdc),
        .Rsc(Rsc),
        .Rtc(Rtc),
        .Rd(Rd),
        .Rs(Rs),
        .Rt(Rt)
    );

    //Controller
    //鍬咎峺綜??廬撹op(operation)
    Controller Controller_inst(
        .clk(clk),
        .ena(ena),
        .rst(rst),
        .zero(zero),
        .ins(ins),
        .op(op),
        .ena_MUX1(ena_MUX1),
        .choice_MUX1(choice_MUX1),
        .ena_MUX2(ena_MUX2),
        .choice_MUX2(choice_MUX2),
        .ena_MUX3(ena_MUX3),
        .choice_MUX3(choice_MUX3),
        .ena_MUX4(ena_MUX4),
        .choice_MUX4(choice_MUX4),
        .RF_wena(RF_wena),
        .Rdc(Rdc),
        .Rsc(Rsc),
        .Rtc(Rtc),
        .DM_ena(DM_ena),
        .DM_worr(DM_worr)
    );


    //ALU
    ALU ALU_inst(
        .a(out_MUX2),
        .b(out_MUX3),
        .aluc(op),
        .r(aluc_r),
        .zero(zero),
        .carry(carry),
        .negative(negative),
        .overflow(overflow)
    );


    //EXT
    EXT EXT_inst(
        .clk(clk),
        .ena(ena),
        .op(op),
        .ins(ins),
        .ext_out(ext_out)
    );


    //connect
    Connect Connect_inst(
        .clk(clk),
        .ena(ena),
        .pc(pc),//喘輝念議pc議哘乎音氏竃諒籾杏。。。
        .ins(ins),
        .connect_out(connect_out)
    );


    //ADD1
    ADD1 ADD1_inst(
        .NPC(NPC),
        .ext_out(ext_out),
        .add1_out(add1_out)
    );


    //ADD2
    ADD2 ADD2_inst(
        .pc(pc),
        .add2_out(add2_out)
    );


    //MUX1
    MUX1 MUX1_inst(
        .clk(clk),
        .ena(ena_MUX1),
        .in1(NPC),
        .in2(connect_out),
        .in3(Rs),
        .in4(add1_out),
        .choice(choice_MUX1),
        .out(out_MUX1)
    );


    //MUX2
    MUX2 MUX2_inst(
        .clk(clk),
        .ena(ena_MUX2),
        .in1(Rs),
        .in2(ext_out),
        .choice(choice_MUX2),
        .out(out_MUX2)
    );


    //MUX3
    MUX3 MUX3_inst(
        .clk(clk),
        .ena(ena_MUX3),
        .in1(Rt),
        .in2(ext_out),
        .choice(choice_MUX3),
        .out(out_MUX3)
    );


    //MUX4
    MUX4 MUX4_inst(
        .clk(clk),
        .ena(ena_MUX4),
        .in1({31'b0,negative}),
        .in2(DM_rdata),
        .in3(aluc_r),
        .in4(add2_out),
        .choice(choice_MUX4),
        .out(out_MUX4)
    );
/*
込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込
*/








    
endmodule
