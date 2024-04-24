`timescale 1ns / 1ps

module optimised_adder_Nb #(
    parameter   ADDER_WIDTH = 16,
    parameter   UNIT_WIDTH = 4
    )
    (
    input   wire [ADDER_WIDTH-1:0]  iA, iB, 
    input   wire                    iCarry,
    output  wire [ADDER_WIDTH-1:0]  oSum, 
    output  wire                    oCarry
);

    wire[ADDER_WIDTH-1:0] wCarry;

// variable to control for loop
    genvar i;

// instantiate full adders

full_adder full_adder_inst (
            .iA(iA[0]),
            .iB(iB[0]),
            .iCarry(iCarry),
            .oSum(oSum[0]),
            .oCarry(wCarry[0])
        );

    generate
        for (i=1; i<UNIT_WIDTH; i=i+1) 
        begin
        full_adder full_adder_inst (
            .iA(iA[i]),
            .iB(iB[i]),
            .iCarry(wCarry[i-1]),
            .oSum(oSum[i]),
            .oCarry(wCarry[i])
        );
        end
        
        for (i=UNIT_WIDTH; i<ADDER_WIDTH; i=i+UNIT_WIDTH) 
        begin
        carry_select_adder_unit_Nb #( .UNIT_WIDTH(UNIT_WIDTH) )
 carry_select_adder_unit_inst (
            .iA(iA[i+UNIT_WIDTH-1:i]),
            .iB(iB[i+UNIT_WIDTH-1:i]),
            .iCarry(wCarry[i-1]),
            .oSum(oSum[i+UNIT_WIDTH-1:i]),
            .oCarry(wCarry[i+UNIT_WIDTH-1])
        );
        end 
    endgenerate

    assign oCarry = wCarry[ADDER_WIDTH-1];


endmodule
