`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2024 15:40:29
// Design Name: 
// Module Name: ripple_carry_adder_Nb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ripple_carry_adder_Nb #(parameter   ADDER_WIDTH = 16)
    (
    input   wire [ADDER_WIDTH-1:0]  iA, iB, 
    input   wire                    iCarry,
    output  wire [ADDER_WIDTH-1:0]  oSum, 
    output  wire                    oCarry
    );
        
    wire[ADDER_WIDTH-1:0] wCarry;  
     
    genvar i;
    generate
        for (i=0; i<ADDER_WIDTH; i = i+1)
        begin
            if(i == 0)
            begin
                full_adder full_adder_inst
                (.iA(iA[i]), .iB(iB[i]), .iCarry(iCarry),
                .oSum(oSum[i]), .oCarry(wCarry[i+1]));
            end
            else if(i == ADDER_WIDTH)
            begin
                full_adder full_adder_inst
                (.iA(iA[i]), .iB(iB[i]), .iCarry(wCarry[i]),
                .oSum(oSum[i]), .oCarry(oCarry));
            end
            else
            begin
                full_adder full_adder_inst
                (.iA(iA[i]), .iB(iB[i]), .iCarry(wCarry[i]),
                .oSum(oSum[i]), .oCarry(wCarry[i+1]));
            end
        end
    endgenerate
endmodule
