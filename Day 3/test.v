module test();

reg clk, reset;
wire [7:0] out;

core uut (clk,reset,out);

initial
begin
    clk = 1'b0;
    reset = 1'b0;
    
    #10;
    reset = 1'b1;
    #50;
    reset = 1'b0;
end

always #5 clk = ~clk;
initial #200 $finish;

endmodule
