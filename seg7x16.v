`timescale 1ns / 1ps

module seg7x16(
    input clk,            // 时钟输入
    input reset,          // 异步复位输入
    input cs,             // 片选输入
    input [31:0] i_data,  // 32位输入数据
    output [7:0] o_seg,   // 7段LED显示器段值的8位输出
    output [7:0] o_sel   // 选择要显示的16个数字之一的8位输出
);
    reg [14:0] cnt;       // 15位计数器，用于生成7段LED显示的时钟信号
    always @ (posedge clk, posedge reset)
        if (reset)
            cnt <= 0;    // 复位计数器
        else
            cnt <= cnt + 1'b1;  // 每个正沿计数器加1

    wire seg7_clk = cnt[14];  // 计数器的最高位用于生成7段LED显示的时钟信号

    reg [2:0] seg7_addr;  // 3位寄存器，用于选择要显示的16个数字之一
    always @ (posedge seg7_clk, posedge reset)
        if(reset)
            seg7_addr <= 0;  // 复位寄存器
        else
            seg7_addr <= seg7_addr + 1'b1;  // 每个正沿寄存器加1

    reg [7:0] o_sel_r;   // 8位寄存器，用于存储选择要显示的数字的值
    always @ (*)
        case(seg7_addr)  // 根据寄存器的值选择要显示的数字
            7 : o_sel_r = 8'b01111111;
            6 : o_sel_r = 8'b10111111;
            5 : o_sel_r = 8'b11011111;
            4 : o_sel_r = 8'b11101111;
            3 : o_sel_r = 8'b11110111;
            2 : o_sel_r = 8'b11111011;
            1 : o_sel_r = 8'b11111101;
            0 : o_sel_r = 8'b11111110;
        endcase

    reg [31:0] i_data_store;  // 32位寄存器，用于存储输入数据
    always @ (posedge clk, posedge reset)
        if(reset)
            i_data_store <= 0;  // 复位寄存器
        else if(cs)
            i_data_store <= i_data;  // 存储输入数据到寄存器

    reg [7:0] seg_data_r;   // 8位寄存器，用于存储要显示的数字的段值
    always @ (*)
        case(seg7_addr)   // 根据寄存器的值选择要显示的数字的段值
            0 : seg_data_r = i_data_store[3:0];
            1 : seg_data_r = i_data_store[7:4];
            2 : seg_data_r = i_data_store[11:8];
            3 : seg_data_r = i_data_store[15:12];
            4 : seg_data_r = i_data_store[19:16];
            5 : seg_data_r = i_data_store[23:20];
            6 : seg_data_r = i_data_store[27:24];
            7 : seg_data_r = i_data_store[31:28];
        endcase

    reg [7:0] o_seg_r;   // 8位寄存器，用于存储要显示的数字的段值
    always @ (posedge clk, posedge reset)
        if(reset)
            o_seg_r <= 8'hff;  // 复位寄存器
        else
            case(seg_data_r)   // 根据要显示的数字的值选择对应的段值
                4'h0 : o_seg_r <= 8'hC0;
                4'h1 : o_seg_r <= 8'hF9;
                4'h2 : o_seg_r <= 8'hA4;
                4'h3 : o_seg_r <= 8'hB0;
                4'h4 : o_seg_r <= 8'h99;
                4'h5 : o_seg_r <= 8'h92;
                4'h6 : o_seg_r <= 8'h82;
                4'h7 : o_seg_r <= 8'hF8;
                4'h8 : o_seg_r <= 8'h80;
                4'h9 : o_seg_r <= 8'h90;
                4'hA : o_seg_r <= 8'h88;
                4'hB : o_seg_r <= 8'h83;
                4'hC : o_seg_r <= 8'hC6;
                4'hD : o_seg_r <= 8'hA1;
                4'hE : o_seg_r <= 8'h86;
                4'hF : o_seg_r <= 8'h8E;
            endcase

    assign o_sel = o_sel_r;  // 将选择要显示的数字的值赋给输出寄存器
    assign o_seg = o_seg_r;  // 将要显示的数字的段值赋给输出寄存器

endmodule