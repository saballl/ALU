// Code your design here
module Sabals_ALU (
  out,
  in1,
  in2,
  select);
  
  output [15:0] out;
  input [7:0] in1;
  input [7:0] in2;
  input [3:0] select;
  
  reg [15:0] out;
  
  always @(select or in1 or in2)
  begin
    if(select == 0)
      out = in1;
    else if (select == 1)
      out = in2;
    else if (select == 2)
      out = in1+in2;
    else if (select == 3)
      out = in1-in2;
    else if (select == 4)
      out = in1/in2;
    else if (select == 5)
      out = in1%in2;
    else if (select == 6)
      out = in1<<1;
    else if (select == 7)
      out = in1>>1;
    else if (select == 8)
      out = (in1>in2)?65535:0;
    else if (select == 9)
      out = (in1==in2)?65535:0;
    else if (select == 10)
      out = in1*in2;
    else if (select == 11)
      out = in1&in2;
    else if (select == 12)
      out = in1|in2;
    else if (select == 13)
      out = in1^in2;
    else if (select == 14)
      out = {in1,in2};
    else if (select == 15)
      out = (in1+in2)/2;

  end
  
endmodule