module program_counter(input [5:0]jmp_addrs,input clk,rst,pc_en_in,jmp_in,output reg [5:0] addrs);


always@(posedge clk,posedge rst,posedge jmp_in) begin
  if(rst) begin
    addrs<=6'b000000;
  end
  else if (jmp_in) begin
      addrs<=jmp_addrs;
  end
  // else if(addrs==6'b111111) begin
  //   addrs<=6'b000000;
  // end
  else if (pc_en_in) begin
      addrs<=addrs+1;
  end
end
endmodule
