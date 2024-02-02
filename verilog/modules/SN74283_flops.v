module SN74283_flops(
   input [3:0] a,
   input [3:0] b,
   input cin,
   output [3:0] s,
   output cout
);
   wire [4:0] result;
   assign result = a + b;
   assign {cout, s} = result;

endmodule