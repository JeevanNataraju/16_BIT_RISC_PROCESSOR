module control_unit (input clk,rst,input [3:0] opcode_in,output reg pc_en,jmp,mem_wr,reg_wr,output reg [1:0] sel);
  always @ (posedge clk,posedge rst) begin
    if (rst) begin
      pc_en<=1'b1;
      jmp<=1'b0;
      mem_wr<=1'b0;
      sel<=2'b00;
      reg_wr<=1'b0;
    end else begin
      case(opcode_in)
       4'b0000: begin  // DIV operation
         pc_en<=1'b1;
         jmp<=1'b0;
         mem_wr<=1'b0;
         sel <=2'b10;
         reg_wr<=1'b1;
       end
       4'b0001: begin  //ADD operation
         pc_en<=1'b1;
         jmp<=1'b0;
         mem_wr<=1'b0;
         sel <=2'b10;
         reg_wr<=1'b1;
       end
       4'b0010: begin  //SUB operation
         pc_en<=1'b1;
         jmp<=1'b0;
         mem_wr<=1'b0;
         sel <=2'b10;
         reg_wr<=1'b1;
       end
       4'b0011: begin  //MUL operation
         pc_en<=1'b1;
         jmp<=1'b0;
         mem_wr<=1'b0;
         sel <=2'b10;
         reg_wr<=1'b1;
       end
       4'b0100: begin  //AND operation
         pc_en<=1'b1;
         jmp<=1'b0;
         mem_wr<=1'b0;
         sel <=2'b10;
         reg_wr<=1'b1;
       end
       4'b0101: begin  //OR operation
         pc_en<=1'b1;
         jmp<=1'b0;
         mem_wr<=1'b0;
         sel <=2'b10;
         reg_wr<=1'b1;
       end
       4'b0110: begin  //XOR operation
         pc_en<=1'b1;
         jmp<=1'b0;
         mem_wr<=1'b0;
         sel <=2'b10;
         reg_wr<=1'b1;
       end
       4'b0111: begin  //NOT operation
         pc_en<=1'b1;
         jmp<=1'b0;
         mem_wr<=1'b0;
         sel <=2'b10;
         reg_wr<=1'b1;
       end
       4'b1000: begin  //SHL operation
         pc_en<=1'b1;
         jmp<=1'b0;
         mem_wr<=1'b0;
         sel <=2'b10;
         reg_wr<=1'b1;
       end
       4'b1001: begin  //SHR operation
         pc_en<=1'b1;
         jmp<=1'b0;
         mem_wr<=1'b0;
         sel <=2'b10;
         reg_wr<=1'b1;
       end
       4'b1010: begin  //INC operation
         pc_en<=1'b1;
         jmp<=1'b0;
         mem_wr<=1'b0;
         sel <=2'b10;
         reg_wr<=1'b1;
       end
       4'b1011: begin  //DEC operation
         pc_en<=1'b1;
         jmp<=1'b0;
         mem_wr<=1'b0;
         sel <=2'b10;
         reg_wr<=1'b1;
       end
       4'b1100: begin  //MOV operation
         pc_en<=1'b1;
         jmp<=1'b0;
         mem_wr<=1'b0;
         sel <=2'b00;
         reg_wr<=1'b1;
       end
       4'b1101: begin  //READ operation
         pc_en<=1'b1;
         jmp<=1'b0;
         mem_wr<=1'b0;
         sel <=2'b01;
         reg_wr<=1'b1;
       end
       4'b1110: begin  //WRT operation
         pc_en<=1'b1;
         jmp<=1'b0;
         mem_wr<=1'b1;
         sel <=2'b00;
         reg_wr<=1'b1;
       end
       4'b1111: begin  //JUMP operation
         pc_en<=1'b1;
         jmp<=1'b1;
         mem_wr<=1'b0;
         sel<=1'b0;
         reg_wr<=1'b0;
       end
       default:begin
          pc_en<=1'b1;
          jmp<=1'b0;
          mem_wr<=1'b0;
          sel<=2'b00;
          reg_wr<=1'b0;
       end
       endcase
    end
  end
endmodule // control_unit
