/* 4 to 16 ACTIVE HIGH DECODER */
module address_decoder(IN,OUT_D);
  input [3:0] IN;
  output reg [15:0] OUT_D;
  always @ (IN) begin
    case (IN)
      4'h0: OUT_D = 16'h1;
      4'h1: OUT_D = 16'h2;
      4'h2: OUT_D = 16'h4;
      4'h3: OUT_D = 16'h8;
      4'h4: OUT_D = 16'h10;
      4'h5: OUT_D = 16'h20;
      4'h6: OUT_D = 16'h40;
      4'h7: OUT_D = 16'h80;
      4'h8: OUT_D = 16'h100;
      4'h9: OUT_D = 16'h200;
      4'hA: OUT_D = 16'h400;
      4'hB: OUT_D = 16'h800;
      4'hC: OUT_D = 16'h1000;
      4'hD: OUT_D = 16'h2000;
      4'hE: OUT_D = 16'h4000;
      4'hF: OUT_D = 16'h8000;
      default: OUT_D = 16'h0;
    endcase
  end
endmodule // address_decoder
