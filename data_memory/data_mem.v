/* 128kB Data Memory Top Module */
module data_mem(ADDR,CLK,MEM_WR,DATA_IN,DATA_OUT);
  input CLK,MEM_WR;
  input [15:0] ADDR;
  input [15:0] DATA_IN;
  output [15:0] DATA_OUT;
  wire [15:0] w_d2page;
  wire [15:0] w_page2m0,w_page2m1,w_page2m2,w_page2m3,w_page2m4,w_page2m5,w_page2m6,w_page2m7,w_page2m8,w_page2m9,w_page2m10,w_page2m11,w_page2m12,w_page2m13,w_page2m14,w_page2m15;
  address_decoder page_decoder(.IN(ADDR[15:12]),.OUT_D(w_d2page));
  page page0(.ADDR_PAGE(ADDR[11:0]),.DATA_IN_PAGE(DATA_IN),.DATA_OUT_PAGE(w_page2m0),.CLK_PAGE(CLK & MEM_WR & w_d2page[0]));
  page page1(.ADDR_PAGE(ADDR[11:0]),.DATA_IN_PAGE(DATA_IN),.DATA_OUT_PAGE(w_page2m1),.CLK_PAGE(CLK & MEM_WR & w_d2page[1]));
  page page2(.ADDR_PAGE(ADDR[11:0]),.DATA_IN_PAGE(DATA_IN),.DATA_OUT_PAGE(w_page2m2),.CLK_PAGE(CLK & MEM_WR & w_d2page[2]));
  page page3(.ADDR_PAGE(ADDR[11:0]),.DATA_IN_PAGE(DATA_IN),.DATA_OUT_PAGE(w_page2m3),.CLK_PAGE(CLK & MEM_WR & w_d2page[3]));
  page page4(.ADDR_PAGE(ADDR[11:0]),.DATA_IN_PAGE(DATA_IN),.DATA_OUT_PAGE(w_page2m4),.CLK_PAGE(CLK & MEM_WR & w_d2page[4]));
  page page5(.ADDR_PAGE(ADDR[11:0]),.DATA_IN_PAGE(DATA_IN),.DATA_OUT_PAGE(w_page2m5),.CLK_PAGE(CLK & MEM_WR & w_d2page[5]));
  page page6(.ADDR_PAGE(ADDR[11:0]),.DATA_IN_PAGE(DATA_IN),.DATA_OUT_PAGE(w_page2m6),.CLK_PAGE(CLK & MEM_WR & w_d2page[6]));
  page page7(.ADDR_PAGE(ADDR[11:0]),.DATA_IN_PAGE(DATA_IN),.DATA_OUT_PAGE(w_page2m7),.CLK_PAGE(CLK & MEM_WR & w_d2page[7]));
  page page8(.ADDR_PAGE(ADDR[11:0]),.DATA_IN_PAGE(DATA_IN),.DATA_OUT_PAGE(w_page2m8),.CLK_PAGE(CLK & MEM_WR & w_d2page[8]));
  page page9(.ADDR_PAGE(ADDR[11:0]),.DATA_IN_PAGE(DATA_IN),.DATA_OUT_PAGE(w_page2m9),.CLK_PAGE(CLK & MEM_WR & w_d2page[9]));
  page page10(.ADDR_PAGE(ADDR[11:0]),.DATA_IN_PAGE(DATA_IN),.DATA_OUT_PAGE(w_page2m10),.CLK_PAGE(CLK & MEM_WR & w_d2page[10]));
  page page11(.ADDR_PAGE(ADDR[11:0]),.DATA_IN_PAGE(DATA_IN),.DATA_OUT_PAGE(w_page2m11),.CLK_PAGE(CLK & MEM_WR & w_d2page[11]));
  page page12(.ADDR_PAGE(ADDR[11:0]),.DATA_IN_PAGE(DATA_IN),.DATA_OUT_PAGE(w_page2m12),.CLK_PAGE(CLK & MEM_WR & w_d2page[12]));
  page page13(.ADDR_PAGE(ADDR[11:0]),.DATA_IN_PAGE(DATA_IN),.DATA_OUT_PAGE(w_page2m13),.CLK_PAGE(CLK & MEM_WR & w_d2page[13]));
  page page14(.ADDR_PAGE(ADDR[11:0]),.DATA_IN_PAGE(DATA_IN),.DATA_OUT_PAGE(w_page2m14),.CLK_PAGE(CLK & MEM_WR & w_d2page[14]));
  page page15(.ADDR_PAGE(ADDR[11:0]),.DATA_IN_PAGE(DATA_IN),.DATA_OUT_PAGE(w_page2m15),.CLK_PAGE(CLK & MEM_WR & w_d2page[15]));
  data_mux data_pass_main2op(.IN0((w_page2m0)),.IN1((w_page2m1)),.IN2((w_page2m2)),.IN3((w_page2m3)),.IN4((w_page2m4)),.IN5((w_page2m5)),.IN6((w_page2m6)),.IN7((w_page2m7)),.IN8((w_page2m8)),.IN9((w_page2m9)),.IN10((w_page2m10)),.IN11((w_page2m11)),.IN12((w_page2m12)),.IN13((w_page2m13)),.IN14((w_page2m14)),.IN15((w_page2m15)),.SEL(ADDR[15:12]),.OUT_M(DATA_OUT));
endmodule // page
