`timescale 1ns / 1ps

module carry_select_adder_unit_Nb #(
    parameter   UNIT_WIDTH = 4
    )
    (
    input   wire [UNIT_WIDTH-1:0]  iA, iB, 
    input   wire                    iCarry,
    output  wire [UNIT_WIDTH-1:0]  oSum, 
    output  wire                    oCarry
);

wire[UNIT_WIDTH-1:0] wCarrySet, wCarryUnset, wSumSet, wSumUnset;

// variable to control for loop
    genvar i;

// instantiate full adders

full_adder full_adder_set (
            .iA(iA[0]),
            .iB(iB[0]),
            .iCarry(iCarry),
            .oSum(wSumSet[0]),
            .oCarry(wCarrySet[0])
        );
full_adder full_adder_unset (
            .iA(iA[0]),
            .iB(iB[0]),
            .iCarry(iCarry),
            .oSum(wSumUnset[0]),
            .oCarry(wCarryUnset[0])
        );

    generate
        for (i=1; i<UNIT_WIDTH; i=i+1) 
        begin
        full_adder full_adder_set (
            .iA(iA[i]),
            .iB(iB[i]),
            .iCarry(wCarrySet[i-1]),
            .oSum(wSumSet[i]),
            .oCarry(wCarrySet[i])
        );
        full_adder full_adder_unset (
            .iA(iA[i]),
            .iB(iB[i]),
            .iCarry(wCarryUnset[i-1]),
            .oSum(wSumUnset[i]),
            .oCarry(wCarryUnset[i])
        );
        end 
    endgenerate

    assign oCarry = (iCarry == 1) ? wCarrySet[UNIT_WIDTH-1] : wCarryUnset[UNIT_WIDTH-1];
    assign oSum = (iCarry == 1) ? wSumSet : wSumUnset;

endmodule

