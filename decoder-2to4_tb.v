module decoder_2to4_tb;
    reg  [1:0] sel;
    reg        en;
    wire [3:0] y;

    decoder_2to4 uut (.sel(sel), .en(en), .y(y));

    initial begin
        en = 1;
        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;
        en = 0; sel = 2'b01; #10;
        $finish;
    end
endmodule