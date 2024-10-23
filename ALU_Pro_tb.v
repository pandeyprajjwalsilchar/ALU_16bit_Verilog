
module ALU_Pro_tb();
reg [15:0] floatA, floatB;     // Inputs to ALU
  reg [2:0] opcode;              // ALU operation
  reg en;                        // Enable signal
  wire [15:0] result;            // Output from ALU

 ALU_Pro dut(.floatA(floatA),.floatB(floatB),.opcode(opcode),.en(en),.result(result));
 
 always #15 opcode = opcode + 3'b001;
 
 initial 
    begin
        en = 1'b0;
        #10 en = 1'b1;
        floatA = 16'd4;
        floatB = 16'd8;
        opcode = 3'b000;
        
    end
endmodule
