module upcounter_testbench();
reg clk, reset, enable;
wire [3:0] out;

//create an instance of the design
up_counter dut(enable, clk, reset, out);

initial begin

//note that these statements are sequential.. execute one after the other 

$dumpfile ("count_up.vcd"); 
$dumpvars(0,upcounter_testbench);

clk=0;  //at time=0
enable=0;  //at time=0
reset=1;//at time=0

#20; //delay 20 units
reset=0; //after 20 units of time, reset becomes 0
enable=1; //at the same time, at time=20, enable is made 1

//Try this statement instead:
//#10 enable=1; //enable is made 1 at 30 units of time. Note the difference in the waveform

end


always 
#5 clk=~clk;  // toggle or negate the clk input every 5 units of time
