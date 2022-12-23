module frequency_divider(clk ,out);

input clk;
output reg [1:0] out;

 initial out = 0;
 integer count1,count2;
 initial count1 = 0;
 initial count2 = 0;
 
  always @ (posedge clk)
  begin
  count1 = count1 + 1;
  count2 = count2 + 1;
  
  if (count1 == 4) // 6/2 + 1 , T = 120
  begin
  out[0] =~ out[0];
  count1 = 1;
  end
  
  if (count2 == 6)  // 10/2 + 1 , T = 200;
  begin
  out[1] =~ out[1];
  count2 = 1;
  end
  
  end
  
 
endmodule
