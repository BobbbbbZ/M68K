module AddressComparator(
    input [18:0] AddressBus,
    input [18:0] TagData,
    output Hit_H
);

assign Hit_H = AddressBus == TagData;

endmodule
