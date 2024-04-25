`timescale 1ns / 1ps

// This is an attempt at a carry select adder
// it's currently unused

module carry_select_adder_unit #(
    parameter   UNIT_WIDTH = 8
    )
    (
    input   wire [UNIT_WIDTH-1:0]  iA, iB, 
    input   wire                    iCarry,
    output  wire [UNIT_WIDTH-1:0]  oSum, 
    output  wire                    oCarry
);

wire wCarrySet, wCarryUnset;
wire[UNIT_WIDTH-1:0] wSumSet, wSumUnset;

// instantiate full adders

carry_lookahead_adder
carry_lookahead_adder_set (
            .iA(iA),
            .iB(iB),
            .iCarry(iCarry),
            .oSum(wSumSet),
            .oCarry(wCarrySet)
        );
carry_lookahead_adder 
carry_lookahead_adder_unset (
            .iA(iA),
            .iB(iB),
            .iCarry(iCarry),
            .oSum(wSumUnset),
            .oCarry(wCarryUnset)
        );

    assign oCarry = (iCarry == 1) ? wCarrySet : wCarryUnset;
    assign oSum = (iCarry == 1) ? wSumSet : wSumUnset;

endmodule


