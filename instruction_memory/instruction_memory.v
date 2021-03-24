module instruction_memory(INSTR_ADDR,INSTR_WORD);
  input [5:0] INSTR_ADDR;
  output reg [23:0] INSTR_WORD;
  always @ (INSTR_ADDR) begin
    case (INSTR_ADDR)
      6'h0: INSTR_WORD = 24'hC0003A;
      6'h1: INSTR_WORD = 24'hC10059;
      6'h2: INSTR_WORD = 24'h120100;
      6'h3: INSTR_WORD = 24'hE20001;
      6'h4: INSTR_WORD = 24'hC30014;
      6'h5: INSTR_WORD = 24'h242300;
      6'h6: INSTR_WORD = 24'hE40002;
      6'h7: INSTR_WORD = 24'hF1C000;
      default: INSTR_WORD = 24'hx;
    endcase
  end
endmodule // instruction_memory
