`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2024 12:28:16
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input wire iA, iB, iCarry,
    output wire oSum, oCarry 
    );
 
    //continuous assignment 
   /* wire p1, p2, p3;
    assign p1 = iA ^ iB;
    assign oSum = p1 ^ iCarry;
    assign p2 = p1 & iCarry;
    assign p3 = iA & iB;
    assign oCarry = p2 | p3;*/
    
    //combinational always block
    reg rSum, rCarry;
    always @(*)
    begin
        rSum = iA ^ iB ^ iCarry;
        rCarry = ( (iA^iB)&iCarry) | (iA&iB);
    end
    assign oSum = rSum;
    assign oCarry = rCarry;
endmodule
