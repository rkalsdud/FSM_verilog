`timescale 1ns / 1ps
module FSM_tb();

wire [2:0] state;
wire z;
reg clk, x, reset;

initial begin
    reset=1'b0;
    clk=1'b0;
    x=1'b0;
end

mealyFSM mod(
    .x(x), .reset(reset), .clk(clk),
    .z(z), .state(state)
);

always #10 clk=~clk;
always #23 x=~x;
initial #400 reset=~reset;

initial begin
    #1000
    $finish;
end

endmodule
