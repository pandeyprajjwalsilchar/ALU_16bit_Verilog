module ALU_Pro(result,floatA,floatB,opcode,en);
output reg [15:0] result;
input [15:0] floatA,floatB;
input [2:0] opcode;
input en;

always @(floatA, floatB, opcode, en) 
begin  
//Here the iteration part begins    
 if(en == 1) 
     begin  
     case(opcode) 
      3'b000 :  result = floatA + floatB; //add 
      3'b001 :  result = floatA * floatB  ; //multiply 
      3'b010 :  result = floatA - floatB; //subtraction 
      3'b011 :  result = floatA & floatB; 
      3'b100 :  result = floatA ^ floatB; 
      3'b101 :  result = floatA | floatB; 
      3'b110 :  result = floatB; 
      3'b111 :  result = ~floatA;
default:  result = 16'd0; //if nothing then output is 16 bit zero endmodule
endcase
end
else
   result = 16'dz;
end
endmodule


