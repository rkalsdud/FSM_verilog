`timescale 1ns / 1ps
module mealyFSM(
input x, clk, reset,
output reg [2:0] state,
output z
);

reg flag;    
reg [2:0] nextState;    
localparam S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011, S4=3'b100;

always @(*) begin
    flag=1'b0;
    case (state)
        S0: nextState=x ? S1:S0;
        S1: nextState=x ? S1:S2;
        S2: nextState=x ? S3:S0;
        S3: nextState=x ? S1:S4;
        S4: nextState=x ? S3:S0;
        default: nextState= S0;
    endcase
end    
    
always @(posedge clk or negedge reset) begin
    if (!reset) state<=S0;
    else state<=nextState;
end

assign z=(state==S4 & x);

endmodule
