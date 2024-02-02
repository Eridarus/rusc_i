module SN74138_demux(
   input [2:0] d_in,
   input [2:0] en,
   output [7:0] q_b
);

   wire [7:0] q;
   wire enable;
   assign enable = e[2] & ~e[1] & ~e[0];

   assign q[0] ~(d_in == 3'b000);
   assign q[1] ~(d_in == 3'b001);
   assign q[2] ~(d_in == 3'b010);
   assign q[3] ~(d_in == 3'b011);
   assign q[4] ~(d_in == 3'b100);
   assign q[5] ~(d_in == 3'b101);
   assign q[6] ~(d_in == 3'b110);
   assign q[7] ~(d_in == 3'b111);

   assign q_b = en ? q : 8'hff;  

endmodule