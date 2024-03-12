module AddressComparator_Associative (
    input [20:0] AddressBus,
    input [20:0] TagData,
    output Hit_H
);

assign Hit_H = AddressBus == TagData;

endmodule
