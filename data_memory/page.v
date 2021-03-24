/* 8kB Page Top Module */
module page(ADDR_PAGE,CLK_PAGE,DATA_IN_PAGE,DATA_OUT_PAGE);
  input CLK_PAGE;
  input [11:0] ADDR_PAGE;
  input [15:0] DATA_IN_PAGE;
  output [15:0] DATA_OUT_PAGE;
  wire [15:0] w_d2seg;
  wire [15:0] w_seg2m0,w_seg2m1,w_seg2m2,w_seg2m3,w_seg2m4,w_seg2m5,w_seg2m6,w_seg2m7,w_seg2m8,w_seg2m9,w_seg2m10,w_seg2m11,w_seg2m12,w_seg2m13,w_seg2m14,w_seg2m15;
  address_decoder seg_decoder(.IN(ADDR_PAGE[11:8]),.OUT_D(w_d2seg));
  segment seg0(.ADDR_SEG(ADDR_PAGE[7:0]),.DATA_IN_SEG(DATA_IN_PAGE),.DATA_OUT_SEG(w_seg2m0),.CLK_SEG(CLK_PAGE & w_d2seg[0]));
  segment seg1(.ADDR_SEG(ADDR_PAGE[7:0]),.DATA_IN_SEG(DATA_IN_PAGE),.DATA_OUT_SEG(w_seg2m1),.CLK_SEG(CLK_PAGE & w_d2seg[1]));
  segment seg2(.ADDR_SEG(ADDR_PAGE[7:0]),.DATA_IN_SEG(DATA_IN_PAGE),.DATA_OUT_SEG(w_seg2m2),.CLK_SEG(CLK_PAGE & w_d2seg[2]));
  segment seg3(.ADDR_SEG(ADDR_PAGE[7:0]),.DATA_IN_SEG(DATA_IN_PAGE),.DATA_OUT_SEG(w_seg2m3),.CLK_SEG(CLK_PAGE & w_d2seg[3]));
  segment seg4(.ADDR_SEG(ADDR_PAGE[7:0]),.DATA_IN_SEG(DATA_IN_PAGE),.DATA_OUT_SEG(w_seg2m4),.CLK_SEG(CLK_PAGE & w_d2seg[4]));
  segment seg5(.ADDR_SEG(ADDR_PAGE[7:0]),.DATA_IN_SEG(DATA_IN_PAGE),.DATA_OUT_SEG(w_seg2m5),.CLK_SEG(CLK_PAGE & w_d2seg[5]));
  segment seg6(.ADDR_SEG(ADDR_PAGE[7:0]),.DATA_IN_SEG(DATA_IN_PAGE),.DATA_OUT_SEG(w_seg2m6),.CLK_SEG(CLK_PAGE & w_d2seg[6]));
  segment seg7(.ADDR_SEG(ADDR_PAGE[7:0]),.DATA_IN_SEG(DATA_IN_PAGE),.DATA_OUT_SEG(w_seg2m7),.CLK_SEG(CLK_PAGE & w_d2seg[7]));
  segment seg8(.ADDR_SEG(ADDR_PAGE[7:0]),.DATA_IN_SEG(DATA_IN_PAGE),.DATA_OUT_SEG(w_seg2m8),.CLK_SEG(CLK_PAGE & w_d2seg[8]));
  segment seg9(.ADDR_SEG(ADDR_PAGE[7:0]),.DATA_IN_SEG(DATA_IN_PAGE),.DATA_OUT_SEG(w_seg2m9),.CLK_SEG(CLK_PAGE & w_d2seg[9]));
  segment seg10(.ADDR_SEG(ADDR_PAGE[7:0]),.DATA_IN_SEG(DATA_IN_PAGE),.DATA_OUT_SEG(w_seg2m10),.CLK_SEG(CLK_PAGE & w_d2seg[10]));
  segment seg11(.ADDR_SEG(ADDR_PAGE[7:0]),.DATA_IN_SEG(DATA_IN_PAGE),.DATA_OUT_SEG(w_seg2m11),.CLK_SEG(CLK_PAGE & w_d2seg[11]));
  segment seg12(.ADDR_SEG(ADDR_PAGE[7:0]),.DATA_IN_SEG(DATA_IN_PAGE),.DATA_OUT_SEG(w_seg2m12),.CLK_SEG(CLK_PAGE & w_d2seg[12]));
  segment seg13(.ADDR_SEG(ADDR_PAGE[7:0]),.DATA_IN_SEG(DATA_IN_PAGE),.DATA_OUT_SEG(w_seg2m13),.CLK_SEG(CLK_PAGE & w_d2seg[13]));
  segment seg14(.ADDR_SEG(ADDR_PAGE[7:0]),.DATA_IN_SEG(DATA_IN_PAGE),.DATA_OUT_SEG(w_seg2m14),.CLK_SEG(CLK_PAGE & w_d2seg[14]));
  segment seg15(.ADDR_SEG(ADDR_PAGE[7:0]),.DATA_IN_SEG(DATA_IN_PAGE),.DATA_OUT_SEG(w_seg2m15),.CLK_SEG(CLK_PAGE & w_d2seg[15]));
  data_mux data_pass_p2main(.IN0((w_seg2m0)),.IN1((w_seg2m1)),.IN2((w_seg2m2)),.IN3((w_seg2m3)),.IN4((w_seg2m4)),.IN5((w_seg2m5)),.IN6((w_seg2m6)),.IN7((w_seg2m7)),.IN8((w_seg2m8)),.IN9((w_seg2m9)),.IN10((w_seg2m10)),.IN11((w_seg2m11)),.IN12((w_seg2m12)),.IN13((w_seg2m13)),.IN14((w_seg2m14)),.IN15((w_seg2m15)),.SEL(ADDR_PAGE[11:8]),.OUT_M(DATA_OUT_PAGE));
endmodule // page
