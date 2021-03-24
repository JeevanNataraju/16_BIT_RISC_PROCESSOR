/* 16 bit PIPO Register */
module pipo(CLK_REG,DATA_IN_REG,DATA_OUT_REG);
  input CLK_REG;
  input [15:0] DATA_IN_REG;
  output reg [15:0] DATA_OUT_REG;
  always @ (posedge CLK_REG) begin
    DATA_OUT_REG <= DATA_IN_REG;
  end
endmodule // pipo
