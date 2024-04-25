`timescale 1ns / 1ps


module full_adder (
    input   wire    iA, iB, iCarry,
    output  wire    oSum, oCarry
);

assign oSum = (iA ^ iB) ^ iCarry;
assign oCarry = iA & iB | (iA ^ iB) & iCarry;

endmodule


module partial_full_adder (
    input   wire    iA, iB, iCarry,
    output  wire    oSum, oG, oP
);

assign oSum = (iA ^ iB) ^ iCarry;
assign oG = iA & iB;
assign oP = iA ^ iB;

endmodule
