`timescale 1ns / 1ps

module optimised_adder_Nb #(
    parameter   ADDER_WIDTH = 32,
    parameter   UNIT_WIDTH = 4
    )
    (
    input   wire [ADDER_WIDTH-1:0]  iA, iB, 
    input   wire                    iCarry,
    output  wire [ADDER_WIDTH-1:0]  oSum, 
    output  wire                    oCarry
);

    wire[ADDER_WIDTH:0] wCarry;
    assign wCarry[0] = iCarry;

// variable to control for loop
    genvar i;

    generate
        for (i=0; i<ADDER_WIDTH; i=i+UNIT_WIDTH) 
        begin
        carry_lookahead_adder #( .UNIT_WIDTH(UNIT_WIDTH) ) 
        carry_lookahead_adder_inst (
            .iA(iA[i+UNIT_WIDTH-1:i]),
            .iB(iB[i+UNIT_WIDTH-1:i]),
            .iCarry(wCarry[i]),
            .oSum(oSum[i+UNIT_WIDTH-1:i]),
            .oCarry(wCarry[i+UNIT_WIDTH])
        );
        end 
    endgenerate

    assign oCarry = wCarry[ADDER_WIDTH];


endmodule
