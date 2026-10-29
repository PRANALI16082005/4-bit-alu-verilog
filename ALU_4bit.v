module ALU_4bit (
input  [3:0] A,
input  [3:0] B,
input  [2:0] ALU_Sel,
output reg [3:0] ALU_Out,
output reg Carry,
output Zero
);

always @(*) begin

// Default values
ALU_Out = 4'b0000;
Carry = 1'b0;

case (ALU_Sel)

    3'b000: {Carry, ALU_Out} = A + B;  // Addition

    3'b001: ALU_Out = A - B;          // Subtraction

    3'b010: ALU_Out = A & B;          // AND

    3'b011: ALU_Out = A | B;          // OR

    3'b100: ALU_Out = A ^ B;          // XOR

    3'b101: ALU_Out = ~A;             // NOT

    3'b110: ALU_Out = A << 1;         // Left Shift

    3'b111: ALU_Out = A >> 1;         // Right Shift

    default: ALU_Out = 4'b0000;

endcase

end

assign Zero = (ALU_Out == 4'b0000);

endmodule
