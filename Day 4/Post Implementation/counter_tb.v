
`timescale 1ns/1ps

/*
module up_counter (
    input \enable ,
    input \clk ,
    input \reset ,
    output \out[0] ,
    output \out[1] ,
    output \out[2] ,
    output \out[3] 
);
*/


module upcounter_testbench();

reg clk, reset, enable;
wire [3:0] out;


//create an instance of the design
up_counter dut(enable, clk, reset, out);




initial begin

//note that these statements are sequential.. execute one after the other 


clk=0;  //at time=0
enable=0;  //at time=0
reset=1;//at time=0

#20; //delay 20 units
reset=0; //after 20 units of time, reset becomes 0
enable=1; //at the same time, at time=20, enable is made 1

end


always 
#5 clk=~clk;  // toggle or negate the clk input every 5 units of time
