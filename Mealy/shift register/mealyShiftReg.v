`timescale 1ns / 1ps

module mealyShiftReg(
    input x, clk, reset,
    output reg [3:0] Q,
    output z
);

always @(posedge clk or negedge reset) begin
    if (!reset) Q<=5'b00000;
    else Q<={Q[3:0], x};
end

assign z=(Q==4'b1010 & x);

endmodule
