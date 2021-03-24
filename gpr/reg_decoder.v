/* 4 to 16 ACTIVE HIGH DECODER */
module reg_decoder(IN,OUT_D);
  input [3:0] IN;
  output reg [15:0] OUT_D;
  always @ (IN) begin
    case (IN)
      4'h0: OUT_D = 16'h0001;
      4'h1: OUT_D = 16'h0002;
      4'h2: OUT_D = 16'h0004;
      4'h3: OUT_D = 16'h0008;
      4'h4: OUT_D = 16'h0010;
      4'h5: OUT_D = 16'h0020;
      4'h6: OUT_D = 16'h0040;
      4'h7: OUT_D = 16'h0080;
      4'h8: OUT_D = 16'h0100;
      4'h9: OUT_D = 16'h0200;
      4'hA: OUT_D = 16'h0400;
      4'hB: OUT_D = 16'h0800;
      4'hC: OUT_D = 16'h1000;
      4'hD: OUT_D = 16'h2000;
      4'hE: OUT_D = 16'h4000;
      4'hF: OUT_D = 16'h8000;
      default: OUT_D = 16'h0000;
    endcase
  end
endmodule // reg_decoder
