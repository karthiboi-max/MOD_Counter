
module mod6_counter (
    input clk,
    input reset,
    output reg [2:0] count
);

always @(posedge clk) begin
    if (reset)
        count <= 3'b000;
    else if (count == 3'b101)
        count <= 3'b000;
    else
        count <= count + 1'b1;
end

endmodule
