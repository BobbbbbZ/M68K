module CacheDataMux(
    input ValidHit0_H,
    input ValidHit1_H,
    input ValidHit2_H,
    input ValidHit3_H,
	 input ValidHit4_H,
    input ValidHit5_H,
    input ValidHit6_H,
    input ValidHit7_H,
    input [15:0] Block0_In,
    input [15:0] Block1_In,
    input [15:0] Block2_In,
    input [15:0] Block3_In,
	 input [15:0] Block4_In,
    input [15:0] Block5_In,
    input [15:0] Block6_In,
    input [15:0] Block7_In,
    output reg [15:0] DataOut
);

always @(ValidHit0_H or ValidHit1_H or ValidHit2_H or ValidHit3_H or ValidHit4_H or ValidHit5_H 
or ValidHit6_H or ValidHit7_H or Block0_In or Block1_In or Block2_In or Block3_In or Block4_In or Block5_In or Block6_In or Block7_In)
begin
    if (ValidHit0_H == 1'b1) begin
        DataOut = Block0_In;
    end else if (ValidHit1_H == 1'b1) begin
        DataOut = Block1_In;
    end else if (ValidHit2_H == 1'b1) begin
        DataOut = Block2_In;
    end else if (ValidHit3_H == 1'b1) begin
        DataOut = Block3_In;
    end else if (ValidHit4_H == 1'b1) begin
        DataOut = Block4_In;
    end else if (ValidHit5_H == 1'b1) begin
        DataOut = Block5_In;
    end else if (ValidHit6_H == 1'b1) begin
        DataOut = Block6_In;	 
	 end else begin
        DataOut = Block7_In;
    end
end

endmodule
