`timescale 1ns/1ps

module clock_divider_tb;

reg clk;
reg reset;

wire q1;
wire q2;
wire q3;

clock_divider uut (
    .clk(clk),
    .reset(reset),
    .q1(q1),
    .q2(q2),
    .q3(q3)
);

initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial
begin
    reset = 1;
    #20;
    reset = 0;

    #500;
    $finish;
end

endmodule