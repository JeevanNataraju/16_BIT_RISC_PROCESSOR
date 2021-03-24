/* MUX from Registers to Read Port */
module reg_mux(IN0,IN1,IN2,IN3,IN4,IN5,IN6,IN7,IN8,IN9,IN10,IN11,IN12,IN13,IN14,IN15,SEL,OUT_M);
  input [3:0] SEL;
  input [15:0] IN0,IN1,IN2,IN3,IN4,IN5,IN6,IN7,IN8,IN9,IN10,IN11,IN12,IN13,IN14,IN15;
  output reg [15:0] OUT_M;
  always @ ( * ) begin
    case (SEL)
      4'h0: OUT_M = IN0;
      4'h1: OUT_M = IN1;
      4'h2: OUT_M = IN2;
      4'h3: OUT_M = IN3;
      4'h4: OUT_M = IN4;
      4'h5: OUT_M = IN5;
      4'h6: OUT_M = IN6;
      4'h7: OUT_M = IN7;
      4'h8: OUT_M = IN8;
      4'h9: OUT_M = IN9;
      4'hA: OUT_M = IN10;
      4'hB: OUT_M = IN11;
      4'hC: OUT_M = IN12;
      4'hD: OUT_M = IN13;
      4'hE: OUT_M = IN14;
      4'hF: OUT_M = IN15;
      default: OUT_M = 16'hx;
    endcase
  end
endmodule // reg_mux
