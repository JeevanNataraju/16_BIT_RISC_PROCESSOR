/* 512B Segment Top Module */
module segment(ADDR_SEG,CLK_SEG,DATA_IN_SEG,DATA_OUT_SEG);
  input CLK_SEG;
  input [7:0] ADDR_SEG;
  input [15:0] DATA_IN_SEG;
  output [15:0] DATA_OUT_SEG;
  wire [15:0] w_d2ss;
  wire [15:0] w_ss2m0,w_ss2m1,w_ss2m2,w_ss2m3,w_ss2m4,w_ss2m5,w_ss2m6,w_ss2m7,w_ss2m8,w_ss2m9,w_ss2m10,w_ss2m11,w_ss2m12,w_ss2m13,w_ss2m14,w_ss2m15;
  address_decoder sub_seg_decoder(.IN(ADDR_SEG[7:4]),.OUT_D(w_d2ss));
  sub_segment ss0(.ADDR_SS(ADDR_SEG[3:0]),.DATA_IN_SS(DATA_IN_SEG),.DATA_OUT_SS(w_ss2m0),.CLK_SS(CLK_SEG & w_d2ss[0]));
  sub_segment ss1(.ADDR_SS(ADDR_SEG[3:0]),.DATA_IN_SS(DATA_IN_SEG),.DATA_OUT_SS(w_ss2m1),.CLK_SS(CLK_SEG & w_d2ss[1]));
  sub_segment ss2(.ADDR_SS(ADDR_SEG[3:0]),.DATA_IN_SS(DATA_IN_SEG),.DATA_OUT_SS(w_ss2m2),.CLK_SS(CLK_SEG & w_d2ss[2]));
  sub_segment ss3(.ADDR_SS(ADDR_SEG[3:0]),.DATA_IN_SS(DATA_IN_SEG),.DATA_OUT_SS(w_ss2m3),.CLK_SS(CLK_SEG & w_d2ss[3]));
  sub_segment ss4(.ADDR_SS(ADDR_SEG[3:0]),.DATA_IN_SS(DATA_IN_SEG),.DATA_OUT_SS(w_ss2m4),.CLK_SS(CLK_SEG & w_d2ss[4]));
  sub_segment ss5(.ADDR_SS(ADDR_SEG[3:0]),.DATA_IN_SS(DATA_IN_SEG),.DATA_OUT_SS(w_ss2m5),.CLK_SS(CLK_SEG & w_d2ss[5]));
  sub_segment ss6(.ADDR_SS(ADDR_SEG[3:0]),.DATA_IN_SS(DATA_IN_SEG),.DATA_OUT_SS(w_ss2m6),.CLK_SS(CLK_SEG & w_d2ss[6]));
  sub_segment ss7(.ADDR_SS(ADDR_SEG[3:0]),.DATA_IN_SS(DATA_IN_SEG),.DATA_OUT_SS(w_ss2m7),.CLK_SS(CLK_SEG & w_d2ss[7]));
  sub_segment ss8(.ADDR_SS(ADDR_SEG[3:0]),.DATA_IN_SS(DATA_IN_SEG),.DATA_OUT_SS(w_ss2m8),.CLK_SS(CLK_SEG & w_d2ss[8]));
  sub_segment ss9(.ADDR_SS(ADDR_SEG[3:0]),.DATA_IN_SS(DATA_IN_SEG),.DATA_OUT_SS(w_ss2m9),.CLK_SS(CLK_SEG & w_d2ss[9]));
  sub_segment ss10(.ADDR_SS(ADDR_SEG[3:0]),.DATA_IN_SS(DATA_IN_SEG),.DATA_OUT_SS(w_ss2m10),.CLK_SS(CLK_SEG & w_d2ss[10]));
  sub_segment ss11(.ADDR_SS(ADDR_SEG[3:0]),.DATA_IN_SS(DATA_IN_SEG),.DATA_OUT_SS(w_ss2m11),.CLK_SS(CLK_SEG & w_d2ss[11]));
  sub_segment ss12(.ADDR_SS(ADDR_SEG[3:0]),.DATA_IN_SS(DATA_IN_SEG),.DATA_OUT_SS(w_ss2m12),.CLK_SS(CLK_SEG & w_d2ss[12]));
  sub_segment ss13(.ADDR_SS(ADDR_SEG[3:0]),.DATA_IN_SS(DATA_IN_SEG),.DATA_OUT_SS(w_ss2m13),.CLK_SS(CLK_SEG & w_d2ss[13]));
  sub_segment ss14(.ADDR_SS(ADDR_SEG[3:0]),.DATA_IN_SS(DATA_IN_SEG),.DATA_OUT_SS(w_ss2m14),.CLK_SS(CLK_SEG & w_d2ss[14]));
  sub_segment ss15(.ADDR_SS(ADDR_SEG[3:0]),.DATA_IN_SS(DATA_IN_SEG),.DATA_OUT_SS(w_ss2m15),.CLK_SS(CLK_SEG & w_d2ss[15]));
  data_mux data_pass_s2p(.IN0((w_ss2m0)),.IN1((w_ss2m1)),.IN2((w_ss2m2)),.IN3((w_ss2m3)),.IN4((w_ss2m4)),.IN5((w_ss2m5)),.IN6((w_ss2m6)),.IN7((w_ss2m7)),.IN8((w_ss2m8)),.IN9((w_ss2m9)),.IN10((w_ss2m10)),.IN11((w_ss2m11)),.IN12((w_ss2m12)),.IN13((w_ss2m13)),.IN14((w_ss2m14)),.IN15((w_ss2m15)),.SEL(ADDR_SEG[7:4]),.OUT_M(DATA_OUT_SEG));
endmodule // segment
