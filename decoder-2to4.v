module decoder_2to4(
    input  [1:0] sel,
    input        en,
    output [3:0] y
);
    assign y = (en) ? (4'b0001 << sel) : 4'b0000;
endmodule