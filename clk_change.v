`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/10 13:18:26
// Design Name: 
// Module Name: clk_change
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


module clk_change(
    input clk_in1,        // 100MHz input clock
    output reg clk_out1 = 0 // 25Hz output clock
    );
    
    reg [31:0] cnt = 0; // Counter large enough for 4,000,000 counts. 2^22 > 4,000,000 so 22 bits are required. We use 21 down to 0 for a total of 22 bits.
    
    always @(posedge clk_in1) begin
        if (cnt == 31'd50_000_000 - 1) begin
            cnt <= 0;     // Reset cnt
            clk_out1 <= ~clk_out1; // Toggle the output clock
        end else begin
            cnt <= cnt + 1; // Increment cnt
        end
    end
    
endmodule
