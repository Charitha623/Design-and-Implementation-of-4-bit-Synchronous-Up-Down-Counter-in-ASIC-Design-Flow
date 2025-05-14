`timescale 1ns/1ps
module counter_tb();
reg clk,rst,n;
wire[3:0] count;

always
begin
 #5 clk=~clk;
end
initial begin
clk=0;
rst=0;
#5 rst=1;
end
initial begin
n=1;
#160 n=0;
end
counter dut(clk,n,rst,count);
initial begin
$monitor("time=%t rst=%b count=%b",$time,rst,clk,count);
#320 $finish;
end
endmodule
