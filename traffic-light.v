module traffic_light ( 
input clk, 
input reset, 
output reg red, 
output reg yellow, 
output reg green 
);
reg [1:0] state; 
reg [3:0] timer; 
parameter RED = 2'b00, 
 GREEN = 2'b01, 
 YELLOW = 2'b10; 
always @ (posedge clk or posedge reset) begin 
if(reset) begin 
 state <= RED; 
 timer <= 0; 
end 
else begin 
 timer <= timer + 1; 
 case(state) 
 RED: 
 if(timer == 5) begin 
 state <= GREEN; 
 timer <= 0; 
 end 
 GREEN: 
 if(timer == 5) begin 
 state <= YELLOW; 
 timer <= 0; 
 end 
 YELLOW: 
 if(timer == 2) begin 
 state <= RED; 
 timer <= 0; 
 end 
 endcase 
end 
end 
always @(*) begin 
red = 0; 
yellow = 0; 
green = 0; 
case(state) 
 RED: red = 1; 
 GREEN: green = 1; 
 YELLOW: yellow = 1; 
endcase 
end 
endmodule
