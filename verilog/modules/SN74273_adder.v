module SN74273_adder(
   input [7:0] d,
   input mr_b,
   input clk,
   output [7:0] q
);

   reg [7:0] data;
   always@(posedge clk, negedge mr_b)
	begin
	   if(mr_b==1'b0)
		data <= 8'h00;
	   else
		data <= d;
	end

   assign q = data;

endmodule