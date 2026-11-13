

module mod6_counter_tb;

reg clk;
reg reset;
wire [2:0] count;

mod6_counter uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;

    #10;
    reset = 0;

    repeat (12) begin
        @(posedge clk);
        #1;
        $display("Time=%0t Reset=%b Count=%d",
                  $time, reset, count);
    end

    $finish;
end

endmodule

