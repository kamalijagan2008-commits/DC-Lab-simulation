`timescale 1ns / 1ps
module binary_adder_4bit_tb;
reg [3:0] A;
reg [3:0] B;
wire [3:0] Sum;
wire Carry;
binary_adder_4bit uut (
.A(A),
.B(B),
.Sum(Sum),
.Carry(Carry)
);
initial
begin
A = 4'b0000; B = 4'b0000; #10;
A = 4'b0011; B = 4'b0101; #10;
A = 4'b0110; B = 4'b0011; #10;
A = 4'b1111; B = 4'b0001; #10;
$finish;
end
endmodule