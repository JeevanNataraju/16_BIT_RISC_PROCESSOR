/* DFF to hold data */
module two_byte_cell(DATA_IN_CELL,DATA_OUT_CELL,CLK_CELL);
  input [15:0] DATA_IN_CELL;
  input CLK_CELL;
  output reg [15:0] DATA_OUT_CELL;
  always @ (posedge CLK_CELL) begin
      DATA_OUT_CELL <= DATA_IN_CELL;
  end
endmodule // two_byte_cell
