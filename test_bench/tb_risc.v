module tb_risc();
  reg clk,reset;
  wire [15:0] alu_res;
  wire [2:0] status_flag;
  risc DUT(.CLK(clk),.RESET(reset),.STATUS_FLAG(status_flag),.ALU_RES(alu_res));
  initial begin
    $dumpfile("risc.vcd");
    $dumpvars(0,tb_risc);
    clk = 1'b0;
    reset = 1'b0;
  end
  initial begin
    #10 clk = ~clk;
    repeat(40) begin
      #2 clk = ~clk;
    end
  end
  initial begin
    #3 reset = 1'b1;
    #3 reset = 1'b0;
  end
endmodule // tb_risc
