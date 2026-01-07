`timescale 1ns / 1ps
module shift_tb();

wire [4:0] Q;
reg x, clk, reset;
wire z;

initial begin
    x=1'b0;
    clk=1'b0;
    reset=1'b0;
end

mooreShiftReg temp(
    .x(x), .clk(clk), .reset(reset),
    .Q(Q), .z(z)
);

always #10 clk=~clk;
always #23 x=~x;
initial #400 reset=~reset;

initial #1000 $finish;

endmodule
