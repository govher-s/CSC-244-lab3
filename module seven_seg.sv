// seven_seg
module seven_seg(
	
	input logic [3:0] e,
	input logic [0:0] dec,
	output logic [6:0] s,
	output logic [0:0] dp
	

);
logic [15:0] d;

dec416(
	.A(e),
	.Y(d)
);

assign s[6] = ~(d[2] | d[3] | d[4] | d[5] | d[6] | d[8] | d[9] | d[10] | d[11] | d[13] | d[14] | d[15]);
assign s[5] = ~(d[0] | d[4] | d[5] | d[6] | d[8] | d[9] | d[10] | d[11] | d[12] | d[14] | d[15]);
assign s[4] = ~(d[0] | d[2] | d[6] | d[8] | d[10] | d[11] | d[12] | d[13] | d[14]);
assign s[3] = ~(d[0] | d[2] | d[3] | d[5] | d[6] | d[8] | d[9] | d[11] | d[12] | d[13] | d[14]);
assign s[2] = ~(d[0] | d[1] | d[3] | d[4] | d[5] | d[6] | d[7] | d[8] | d[9] | d[10] | d[11] | d[13]);
assign s[1] = ~(d[0] | d[1] | d[2] | d[3] | d[4] | d[7] | d[8] | d[9] | d[10] | d[13]);
assign s[0] = ~(d[0] | d[2] | d[3] | d[5] | d[6] | d[7] | d[8] | d[9] | d[10] | d[12] | d[14] | d[15]);

assign dp = dec;


endmodule
