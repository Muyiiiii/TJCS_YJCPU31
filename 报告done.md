<img src="报告首页.png" style="zoom:150%;" />





# 一、实验内容

​		在本次实验中，我们将使用Verilog语言实现31条MIPS指令的CPU的设计与仿真





# 二、数据通路设计



## ① R型指令



### 1.ADD

![ADD](ins_pic/ADD.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow PC\\
> Rs \rightarrow A\\
> Rt \rightarrow B\\
> res \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$



### 2.ADDU

![ADD](ins_pic/ADD.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> Rs \rightarrow A\\
> Rt \rightarrow B\\
> res \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$



### 3.SUB

![ADD](ins_pic/ADD.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> Rs \rightarrow A\\
> Rt \rightarrow B\\
> res \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$



### 4.SUBU

![ADD](ins_pic/ADD.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> Rs \rightarrow A\\
> Rt \rightarrow B\\
> res \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$



### 5.AND

![ADD](ins_pic/ADD.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> Rs \rightarrow A\\
> Rt \rightarrow B\\
> res \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$



### 6.OR

![ADD](ins_pic/ADD.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> Rs \rightarrow A\\
> Rt \rightarrow B\\
> res \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$



### 7.XOR

![ADD](ins_pic/ADD.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> Rs \rightarrow A\\
> Rt \rightarrow B\\
> res \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$



### 8.NOR

![ADD](ins_pic/ADD.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> Rs \rightarrow A\\
> Rt \rightarrow B\\
> res \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$



### 9.SLT

![SLT](ins_pic/SLT.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> Rs \rightarrow A\\
> Rt \rightarrow B\\
> negative \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$



### 10.SLTU

![SLT](ins_pic/SLT.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> Rs \rightarrow A\\
> Rt \rightarrow B\\
> negative \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$



### 11.SLL

![SLL](ins_pic/SLL.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> IMEM \rightarrow EXT\_connect\\
> EXT\_connect \rightarrow A\\
> Rt \rightarrow B\\
> res \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$
>
> 



### 12.SRL

![SLL](ins_pic/SLL.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> IMEM \rightarrow EXT\_connect\\
> EXT\_connect \rightarrow A\\
> Rt \rightarrow B\\
> res \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$



### 13.SRA

![SLL](ins_pic/SLL.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> IMEM \rightarrow EXT\_connect\\
> EXT\_connect \rightarrow A\\
> Rt \rightarrow B\\
> res \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$



### 14.SLLV

![SLLV](ins_pic/SLLV.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> Rs \rightarrow A\\
> Rt \rightarrow B\\
> res \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$



### 15.SRLV

![SLLV](ins_pic/SLLV.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> Rs \rightarrow A\\
> Rt \rightarrow B\\
> res \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$
>
> 



### 16.SRAV

![SLLV](ins_pic/SLLV.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> Rs \rightarrow A\\
> Rt \rightarrow B\\
> res \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$
>
> 



### 17.JR

![JR](ins_pic/JR.png)

> $$
> PC \rightarrow IMEM\\
> Rs \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> $$
>
> 



## ② I型指令

### 18.ADDI

![ADDI](ins_pic/ADDI.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> Rs \rightarrow A\\
> IMEM \rightarrow EXT\_connect\\
> ECT\_connect \rightarrow B\\
> res \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$
>
> 



### 19.ADDIU

![ADDI](ins_pic/ADDI.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> Rs \rightarrow A\\
> IMEM \rightarrow EXT\_connect\\
> ECT\_connect \rightarrow B\\
> res \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$
>
> 



### 20.ANDI

![ADDI](ins_pic/ADDI.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> Rs \rightarrow A\\
> IMEM \rightarrow EXT\_connect\\
> ECT\_connect \rightarrow B\\
> res \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$



### 21.ORI

![ADDI](ins_pic/ADDI.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> Rs \rightarrow A\\
> IMEM \rightarrow EXT\_connect\\
> ECT\_connect \rightarrow B\\
> res \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$
>
> 



### 22.XORI

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> Rs \rightarrow A\\
> IMEM \rightarrow EXT\_connect\\
> ECT\_connect \rightarrow B\\
> res \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$



### 23.LW

![LW](ins_pic/LW.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> Rs \rightarrow A\\
> IMEM \rightarrow EXT\_connect\\
> ECT\_connect \rightarrow B\\
> res \rightarrow DMEM\\
> DMEM \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$



### 24.SW

![SW](ins_pic/SW.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> Rs \rightarrow A\\
> Rt \rightarrow DMEM\\
> IMEM \rightarrow EXT\_connect\\
> ECT\_connect \rightarrow B\\
> res \rightarrow DMEM
> $$



### 25.BEQ

![BEQ](ins_pic/BEQ.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> Rs \rightarrow A\\
> Rt \rightarrow B\\
> IMEM \rightarrow EXT\_connect\\
> ECT\_connect \rightarrow ADD1\\
> NPC \rightarrow ADD1\\
> ADD1 \rightarrow MUX1\\
> zero \rightarrow MUX1\\
> MUX1 \rightarrow PC
> $$



### 26.BNE

![BEQ](ins_pic/BEQ.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> Rs \rightarrow A\\
> Rt \rightarrow B\\
> IMEM \rightarrow EXT\_connect\\
> ECT\_connect \rightarrow ADD1\\
> NPC \rightarrow ADD1\\
> ADD1 \rightarrow MUX1\\
> zero \rightarrow MUX1\\
> MUX1 \rightarrow PC
> $$



### 27.SLTI

![SLTI](ins_pic/SLTI.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> Rs \rightarrow A\\
> IMEM \rightarrow EXT\_connect\\
> ECT\_connect \rightarrow B\\
> zero \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$



### 28.SLTIU

![SLTI](ins_pic/SLTI.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> Rs \rightarrow A\\
> IMEM \rightarrow EXT\_connect\\
> ECT\_connect \rightarrow B\\
> zero \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$



### 29.LUI

![LUI](ins_pic/LUI.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> IMEM \rightarrow EXT\_connect\\
> ECT\_connect \rightarrow B\\
> res \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$



## ③ J指令

### 30.J

![J](ins_pic/J.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> IMEM \rightarrow connect\\
> connect \rightarrow MUX1\\
> MUX1 \rightarrow PC
> $$



### 31. JAL

![JAL](ins_pic/JAL.png)

> $$
> PC \rightarrow IMEM\\
> PC + 4 \rightarrow NPC\\
> NPC \rightarrow MUX1\\
> IMEM \rightarrow connect\\
> connect \rightarrow MUX1\\
> MUX1 \rightarrow PC\\
> PC \rightarrow ADD2\\
> 8 \rightarrow ADD2\\
> ADD2 \rightarrow MUX4\\
> MUX4 \rightarrow Rd
> $$



### 总图

![ALL](ins_pic/ALL.png)

### 操作指令表设计

![ALL_excel](ins_pic/ALL_excel.png)



# 三、模块设计

## 顶层sccomp模块

```verilog
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

```

## IMEM模块

```verilog
module IMEM(
    input [10:0]addr,//指令的地址
    output [31:0]ins//具体指令内容(32位01串)
    );

    dist_mem_gen_0 IMEM_IP_inst(
        .a(addr),
        .spo(ins)
    );

endmodule

```

## DMEM模块

```verilog
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

```

## cpu模块

```verilog
module CPU(
    input clk,
    input rst,//整体的重置
    input ena,
    //IMEM
    input [31:0]ins,
    //DMEM
    output DM_worr,
    output [4:0]DM_addr,//操作的内存的地址
    output [31:0]DM_wdata,//写入的数据
    input [31:0]DM_rdata,//读取到的数据
    output DM_ena,
    //regfile
    //ALU
    //PC
    output [31:0]pc//下一个指令的地址指针
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
    //寄存器
    wire RF_wena;//寄存器写入的使能端
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
    //寄存器
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
    //翻译指令??转成op(operation)
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
        .pc(pc),//用当前的pc的应该不会出问题吧。。。
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
    
endmodule

```

## PCreg模块

```verilog
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
```

## Regfile模块

```verilog
module regfile(
    input ena,
    input rst,
    input clk,
    input write_ena,
    input [4:0] Rdc,
    input [4:0] Rsc,
    input [4:0] Rtc,
    input [31:0] Rd,
    output [31:0] Rs,
    output [31:0] Rt
    );

    reg [31:0]array_reg[31:0];

    assign Rs = ena ? array_reg[Rsc] : 32'bz;//读取对应位置信息
    assign Rt = ena ? array_reg[Rtc] : 32'bz;

    always @(posedge clk or posedge rst) begin
        if(rst && ena) begin
            array_reg[0] <= 32'b0; 
            array_reg[1] <= 32'b0; 
            array_reg[2] <= 32'b0; 
            array_reg[3] <= 32'b0; 
            array_reg[4] <= 32'b0; 
            array_reg[5] <= 32'b0; 
            array_reg[6] <= 32'b0; 
            array_reg[7] <= 32'b0; 
            array_reg[8] <= 32'b0; 
            array_reg[9] <= 32'b0; 
            array_reg[10] <= 32'b0; 
            array_reg[11] <= 32'b0; 
            array_reg[12] <= 32'b0; 
            array_reg[13] <= 32'b0; 
            array_reg[14] <= 32'b0; 
            array_reg[15] <= 32'b0; 
            array_reg[16] <= 32'b0; 
            array_reg[17] <= 32'b0; 
            array_reg[18] <= 32'b0; 
            array_reg[19] <= 32'b0; 
            array_reg[20] <= 32'b0; 
            array_reg[21] <= 32'b0; 
            array_reg[22] <= 32'b0; 
            array_reg[23] <= 32'b0; 
            array_reg[24] <= 32'b0; 
            array_reg[25] <= 32'b0; 
            array_reg[26] <= 32'b0; 
            array_reg[27] <= 32'b0; 
            array_reg[28] <= 32'b0; 
            array_reg[29] <= 32'b0; 
            array_reg[30] <= 32'b0; 
            array_reg[31] <= 32'b0; 
        end
        else begin
            if(write_ena==1'b1 && ena && Rdc!=5'd0) begin
                array_reg[Rdc] <= Rd;
            end
        end
    end

endmodule

```

## Controller控制器模块

```verilog
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


```

##  ALU模块

```verilog
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


```

## EXT_connect 扩展器模块

```verilog
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

```

## connect 拼接模块

```verilog
module Connect(
    input clk,
    input ena,
    input [31:0]pc,
    input [31:0]ins,
    output [31:0]connect_out
    );

    assign connect_out = {pc[31:28],ins[25:0],2'b00};

endmodule
```

## ADD1模块

```verilog
module ADD1(
    input [31:0]NPC,
    input [31:0]ext_out,
    output [31:0]add1_out
    );

    assign add1_out = ext_out + NPC;

endmodule

```

## ADD2模块

```verilog
module ADD2(
    input [31:0]pc,
    output [31:0]add2_out
    );

    assign add2_out = pc + 32'd4;//此时pc已经是NPC了

endmodule
```

## MUX1模块

```verilog
module MUX1(
    input clk,
    inout ena,
    input [31:0]in1,
    input [31:0]in2,
    input [31:0]in3,
    input [31:0]in4,
    input [2:0]choice,
    output reg [31:0]out
    );

    always @(*)begin
        if(ena)begin
            case(choice)
                3'd1:begin
                    out<=in1;
                end
                3'd2:begin
                    out<=in2;
                end
                3'd3:begin
                    out<=in3;
                end
                3'd4:begin
                    out<=in4;
                end
            endcase
        end
    end

endmodule

```

## MUX2模块

```verilog
module MUX2(
    input clk,
    inout ena,
    input [31:0]in1,
    input [31:0]in2,
    input [2:0]choice,
    output reg [31:0]out
    );

    always @(*)begin
        if(ena)begin
            case(choice)
                3'd1:begin
                    out<=in1;
                end
                3'd2:begin
                    out<=in2;
                end
            endcase
        end
    end
    
endmodule
```

## MUX3模块

```verilog
module MUX3(
    input clk,
    inout ena,
    input [31:0]in1,
    input [31:0]in2,
    input [2:0]choice,
    output reg [31:0]out
    );

    always @(*)begin
        if(ena)begin
            case(choice)
                3'd1:begin
                    out<=in1;
                end
                3'd2:begin
                    out<=in2;
                end
            endcase
        end
    end
    
endmodule

```

## MUX4模块

```verilog
module MUX4(
    input clk,
    inout ena,
    input [31:0]in1,
    input [31:0]in2,
    input [31:0]in3,
    input [31:0]in4,
    input [2:0]choice,
    output reg [31:0]out
    );

    always @(*)begin
        if(ena)begin
            case(choice)
                3'd1:begin
                    out<=in1;
                end
                3'd2:begin
                    out<=in2;
                end
                3'd3:begin
                    out<=in3;
                end
                3'd4:begin
                    out<=in4;
                end
            endcase
        end
    end
endmodule
```

# 四、RTL总图

![RTL](ins_pic/RTL.png)

# 五、下板图

![1](ins_pic/1.jpg)

![2](ins_pic/2.jpg)

![3](ins_pic/3.jpg)
