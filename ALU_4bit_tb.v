`timescale 1ns / 1ps

module ALU_4bit_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] ALU_Sel;

wire [3:0] ALU_Out;
wire Carry;
wire Zero;

// Instantiate the ALU
ALU_4bit uut (
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .ALU_Out(ALU_Out),
    .Carry(Carry),
    .Zero(Zero)
);

initial begin

    // Test Addition
    A = 4'd5; B = 4'd3; ALU_Sel = 3'b000;
    #10;

    // Test Subtraction
    A = 4'd5; B = 4'd3; ALU_Sel = 3'b001;
    #10;

    // Test AND
    A = 4'b1010; B = 4'b1100; ALU_Sel = 3'b010;
    #10;

    // Test OR
    A = 4'b1010; B = 4'b1100; ALU_Sel = 3'b011;
    #10;

    // Test XOR
    A = 4'b1010; B = 4'b1100; ALU_Sel = 3'b100;
    #10;

    // Test NOT
    A = 4'b1010; B = 4'b0000; ALU_Sel = 3'b101;
    #10;

    // Test Left Shift
    A = 4'b0011; B = 4'b0000; ALU_Sel = 3'b110;
    #10;

    // Test Right Shift
    A = 4'b0011; B = 4'b0000; ALU_Sel = 3'b111;
    #10;

    // Test Zero Flag
    A = 4'd5; B = 4'd5; ALU_Sel = 3'b001;
    #10;

    $finish;
end

endmodule
