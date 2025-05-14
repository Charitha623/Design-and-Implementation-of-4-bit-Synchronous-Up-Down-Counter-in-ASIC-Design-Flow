`timescale 1ns/1ps
module counter(clk,n,rst,count);
input clk,n,rst;
output reg[3:0] count;
always @(posedge clk or negedge rst)
begin
if(!rst)
count=0;
else if(n)
count=count+1;
else
count=count-1;
end 
endmodule
