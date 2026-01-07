`timescale 1ns / 1ps

module mooreShiftReg(
    input x, clk, reset,
    output reg [4:0] Q,
    output z
);

always @(posedge clk or negedge reset) begin
    if (!reset) Q<=5'b00000;
    else Q<={Q[3:0], x};
end

assign z=(Q==5'b10101);

endmodule
