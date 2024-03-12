module SPI_BUS_Decoder (
        input unsigned [31:0] Address,
        input SPI_Select_H,
        input AS_L,
        output reg SPI_Enable_H
);


//assign SPI_Enable_H = Address[15:4] == 12'h802 & ~AS_L & SPI_Select_H;

always @(*) begin
    // Default: output is inactive
	SPI_Enable_H <= 0;

//    // Check if SPI_Select_H is asserted and AS_L is low (active)
   if (!AS_L && SPI_Select_H && Address[15:4] == 12'h802)
		SPI_Enable_H <= 1;
end

endmodule
