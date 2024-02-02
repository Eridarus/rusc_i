module SN74126_bus(
   input [3:0] a,
   input [3:0] g,
   output [3:0] y
);
   assign y[3] = g[3] ? a[3] : 1'bz;
   assign y[2] = g[2] ? a[2] : 1'bz;
   assign y[1] = g[1] ? a[1] : 1'bz;
   assign y[0] = g[0] ? a[0] : 1'bz;

endmodule