/* Sub Segment top module */
module sub_segment(ADDR_SS,DATA_IN_SS,DATA_OUT_SS,CLK_SS);
  input CLK_SS;
  input [3:0] ADDR_SS;
  input [15:0] DATA_IN_SS;
  output [15:0] DATA_OUT_SS;
  wire [15:0] w_d2c;
  wire [15:0] w_c2m0,w_c2m1,w_c2m2,w_c2m3,w_c2m4,w_c2m5,w_c2m6,w_c2m7,w_c2m8,w_c2m9,w_c2m10,w_c2m11,w_c2m12,w_c2m13,w_c2m14,w_c2m15;
  address_decoder cell_decoder(.IN(ADDR_SS),.OUT_D(w_d2c));
  two_byte_cell cell0(.DATA_IN_CELL(DATA_IN_SS),.DATA_OUT_CELL(w_c2m0),.CLK_CELL(CLK_SS & w_d2c[0]));
  two_byte_cell cell1(.DATA_IN_CELL(DATA_IN_SS),.DATA_OUT_CELL(w_c2m1),.CLK_CELL(CLK_SS & w_d2c[1]));
  two_byte_cell cell2(.DATA_IN_CELL(DATA_IN_SS),.DATA_OUT_CELL(w_c2m2),.CLK_CELL(CLK_SS & w_d2c[2]));
  two_byte_cell cell3(.DATA_IN_CELL(DATA_IN_SS),.DATA_OUT_CELL(w_c2m3),.CLK_CELL(CLK_SS & w_d2c[3]));
  two_byte_cell cell4(.DATA_IN_CELL(DATA_IN_SS),.DATA_OUT_CELL(w_c2m4),.CLK_CELL(CLK_SS & w_d2c[4]));
  two_byte_cell cell5(.DATA_IN_CELL(DATA_IN_SS),.DATA_OUT_CELL(w_c2m5),.CLK_CELL(CLK_SS & w_d2c[5]));
  two_byte_cell cell6(.DATA_IN_CELL(DATA_IN_SS),.DATA_OUT_CELL(w_c2m6),.CLK_CELL(CLK_SS & w_d2c[6]));
  two_byte_cell cell7(.DATA_IN_CELL(DATA_IN_SS),.DATA_OUT_CELL(w_c2m7),.CLK_CELL(CLK_SS & w_d2c[7]));
  two_byte_cell cell8(.DATA_IN_CELL(DATA_IN_SS),.DATA_OUT_CELL(w_c2m8),.CLK_CELL(CLK_SS & w_d2c[8]));
  two_byte_cell cell9(.DATA_IN_CELL(DATA_IN_SS),.DATA_OUT_CELL(w_c2m9),.CLK_CELL(CLK_SS & w_d2c[9]));
  two_byte_cell cell10(.DATA_IN_CELL(DATA_IN_SS),.DATA_OUT_CELL(w_c2m10),.CLK_CELL(CLK_SS & w_d2c[10]));
  two_byte_cell cell11(.DATA_IN_CELL(DATA_IN_SS),.DATA_OUT_CELL(w_c2m11),.CLK_CELL(CLK_SS & w_d2c[11]));
  two_byte_cell cell12(.DATA_IN_CELL(DATA_IN_SS),.DATA_OUT_CELL(w_c2m12),.CLK_CELL(CLK_SS & w_d2c[12]));
  two_byte_cell cell13(.DATA_IN_CELL(DATA_IN_SS),.DATA_OUT_CELL(w_c2m13),.CLK_CELL(CLK_SS & w_d2c[13]));
  two_byte_cell cell14(.DATA_IN_CELL(DATA_IN_SS),.DATA_OUT_CELL(w_c2m14),.CLK_CELL(CLK_SS & w_d2c[14]));
  two_byte_cell cell15(.DATA_IN_CELL(DATA_IN_SS),.DATA_OUT_CELL(w_c2m15),.CLK_CELL(CLK_SS & w_d2c[15]));
  data_mux data_pass_ss2s(.IN0(w_c2m0),.IN1(w_c2m1),.IN2(w_c2m2),.IN3(w_c2m3),.IN4(w_c2m4),.IN5(w_c2m5),.IN6(w_c2m6),.IN7(w_c2m7),.IN8(w_c2m8),.IN9(w_c2m9),.IN10(w_c2m10),.IN11(w_c2m11),.IN12(w_c2m12),.IN13(w_c2m13),.IN14(w_c2m14),.IN15(w_c2m15),.SEL(ADDR_SS),.OUT_M(DATA_OUT_SS));
endmodule //
