module clock_divider(
    input clk,
    input reset,
    output reg q1,
    output reg q2,
    output reg q3
);

always @(posedge clk or posedge reset)
begin
    if (reset)
    begin
        q1 <= 1'b0;
        q2 <= 1'b0;
        q3 <= 1'b0;
    end
    else
    begin
        q1 <= ~q1;

        if (q1)
            q2 <= ~q2;

        if (q2)
            q3 <= ~q3;
    end
end

endmodule
