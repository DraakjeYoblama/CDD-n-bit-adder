`timescale 1ns / 1ps

module carry_lookahead_adder #(
    parameter   UNIT_WIDTH = 4
    )(
    input   wire [UNIT_WIDTH-1:0]  iA, iB, 
    input   wire                    iCarry,
    output  wire [UNIT_WIDTH-1:0]  oSum, 
    output  wire                    oCarry
    );
    
    wire [UNIT_WIDTH-1:0] wP, wG;
    wire [UNIT_WIDTH:0] wCarry;
    
    assign wCarry[0] = iCarry;
    
    assign wCarry[1] = wG[0] + (wP[0] & iCarry);
    assign wCarry[2] = wG[1] + (wP[1] & wG[0]) + (wP[1] & wP[0] & iCarry);
    assign wCarry[3] = wG[2] + (wP[2] & wG[1]) + (wP[2] & wP[1] & wG[0]) + (wP[2] & wP[1] & wP[0] & iCarry);
    assign wCarry[4] = wG[3] + (wP[3] & wG[2]) + (wP[3] & wP[2] & wG[1]) + (wP[3] & wP[2] & wP[1] & wG[0]) + (wP[3] & wP[2] & wP[1] & wP[0] & iCarry);
    
    genvar i,j;       
    generate
        
        for(j=0; j<UNIT_WIDTH; j=j+1) // calculate carry
        begin
        
        partial_full_adder 
        partial_full_adder_inst (
            .iA(iA[j]),
            .iB(iB[j]),
            .iCarry(wCarry[j]),
            .oSum(oSum[j]),
            .oP(wP[j]),
            .oG(wG[j])
        );
    //assign wCarry[j+1] = wG[j] | wP[j] & wCarry[j];
        
        
        end
    endgenerate
    
    assign oCarry = wCarry[UNIT_WIDTH];
    
endmodule



