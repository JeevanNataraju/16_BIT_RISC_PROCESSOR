module sel_mux(in1,in2,in3,sel,out);
  input [15:0] in1,in2,in3;
  input [1:0] sel;
  output reg [15:0] out;
 always @(*)
	begin
		case(sel)
			2'b00: out=in1;
			2'b01: out=in2;
			2'b10: out=in3;
			default: out=16'hx;
		endcase
	end
endmodule
