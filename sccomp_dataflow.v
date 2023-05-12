`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/05 10:47:02
// Design Name: 
// Module Name: sccomp_dataflow
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


module sccomp_dataflow(
    input clk_in,
    input reset,
    output [31:0]inst,
    output [31:0]pc
    );

    wire ena=1'b1;

    //IMEM
    wire [31:0]IM_addr;
    assign IM_addr=(pc-32'h0040_0000)/4;
    //DMEM
    wire DM_ena;
    wire DM_worr;
    wire [4:0]DM_addr;
    wire [31:0]DM_wdata;
    wire [31:0]DM_rdata;


    //IMEM
    IMEM IMEM_inst(
        .addr(IM_addr),
        .ins(inst)
    );


    //cpu
    CPU sccpu(
        .clk(clk_in),
        .rst(reset),
        .ena(1'b1),
        .ins(inst),
        .DM_worr(DM_worr),
        .DM_addr(DM_addr),
        .DM_wdata(DM_wdata),
        .DM_rdata(DM_rdata),
        .DM_ena(DM_ena),
        .pc(pc)
    );


    //DMEM
    DMEM DMEM_inst(
        .clk(clk_in),
        .ena(DM_ena),
        .worr(DM_worr),
        .addr(DM_addr),
        .wdata(DM_wdata),
        .rdata(DM_rdata)
    );

endmodule
