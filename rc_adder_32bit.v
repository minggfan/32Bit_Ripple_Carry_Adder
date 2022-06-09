// =============================================================================
// This file implements a 32bit ripple carry adder.
// =============================================================================

module rc_32bit(
	input wire	[31:0] a,
	input wire	[31:0] b,
	input wire	cin,
	output wire	[31:0] sum,
	output wire	cout
);

wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19, w20, w21, w22, w23, w24, w25, w26, w27, w28, w29, w30, w31;

fa u1(a[0], b[0], cin, sum[0], w1);
fa u2(a[1], b[1], w1, sum[1], w2);
fa u3(a[2], b[2], w2, sum[2], w3);
fa u4(a[3], b[3], w3, sum[3], w4);
fa u5(a[4], b[4], w4, sum[4], w5);
fa u6(a[5], b[5], w5, sum[5], w6);
fa u7(a[6], b[6], w6, sum[6], w7);
fa u8(a[7], b[7], w7, sum[7], w8);
fa u9(a[8], b[8], w8, sum[8], w9);
fa u10(a[9], b[9], w9, sum[9], w10);
fa u11(a[10], b[10], w10, sum[10], w11);
fa u12(a[11], b[11], w11, sum[11], w12);
fa u13(a[12], b[12], w12, sum[12], w13);
fa u14(a[13], b[13], w13, sum[13], w14);
fa u15(a[14], b[14], w14, sum[14], w15);
fa u16(a[15], b[15], w15, sum[15], w16);
fa u17(a[16], b[16], w16, sum[16], w17);
fa u18(a[17], b[17], w17, sum[17], w18);
fa u19(a[18], b[18], w18, sum[18], w19);
fa u20(a[19], b[19], w19, sum[19], w20);
fa u21(a[20], b[20], w20, sum[20], w21);
fa u22(a[21], b[21], w21, sum[21], w22);
fa u23(a[22], b[22], w22, sum[22], w23);
fa u24(a[23], b[23], w23, sum[23], w24);
fa u25(a[24], b[24], w24, sum[24], w25);
fa u26(a[25], b[25], w25, sum[25], w26);
fa u27(a[26], b[26], w26, sum[26], w27);
fa u28(a[27], b[27], w27, sum[27], w28);
fa u29(a[28], b[28], w28, sum[28], w29);
fa u30(a[29], b[29], w29, sum[29], w30);
fa u31(a[30], b[30], w30, sum[30], w31);
fa u32(a[31], b[31], w31, sum[31], cout);

endmodule


module fa(
	input wire x,
	input wire y,
	input wire cin,
	output wire sum,
	output wire cout
);

wire w1, w2, w3;

assign w1 = x ^ y;
assign sum = w1 ^ cin;
assign w2 = w1 & cin;
assign w3 = x & y;
assign cout = w2 | w3;

endmodule
