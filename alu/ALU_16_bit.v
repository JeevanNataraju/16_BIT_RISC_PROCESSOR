`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 04.12.2020 13:00:34
// Design Name:
// Module Name: ALU_16_bit
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


module ALU_16_bit(
    input [15:0] a,
    input [15:0] b,
    input [3:0] alu_control,
    output reg [16:0] result,
    output zero_flag,
    output carry_flag,
    output parity_flag);
    wire [16:0] res;
    always@(*)
        begin
          case(alu_control)
            4'b0000: result = a / b;
            4'b0001: result = a + b;
            4'b0010: result = a - b;
            4'b0011: result = a * b;
            4'b0100: result = a & b;
            4'b0101: result = a | b;
            4'b0110: result = a ^ b;
            4'b0111: result = ~a;
            4'b1000: result = a >> 1;
            4'b1001: result = a << b;
            4'b1010: result = a + 1;
            4'b1011: result = a - 1;
          endcase
      end
    assign res = result;
    assign zero_flag = ~|(res);
    assign carry_flag = res[16];
    assign parity_flag = ^(res);
endmodule
