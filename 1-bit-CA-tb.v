`timescale 1ns / 1ps
module comparator_1bit_tb;
reg A;
reg B;
wire A_greater_B;
wire A_equal_B;
wire A_less_B;
comparator_1bit uut (
.A(A),
.B(B),
.A_greater_B(A_greater_B),
.A_equal_B(A_equal_B),
.A_less_B(A_less_B)
);
initial
begin
A = 0; B = 0; #10;
A = 0; B = 1; #10;
A = 1; B = 0; #10;
A = 1; B = 1; #10;
$finish;
end
endmodule