`timescale 1ns / 1ps

module ripple_carry_adder_Nb_TB();

parameter N = 16;
  reg [N-1:0]  rA, rB;
  reg rCarry = 0;
  wire [N-1:0] wSum;
  wire wCarry;

// instantiate module under test
  ripple_carry_adder_Nb #(.ADDER_WIDTH(N)) 
  ripple_carry_adder_Nb_inst
    (.iA(rA),
     .iB(rB),
     .iCarry(rCarry),
     .oSum(wSum),
     .oCarry(wCarry)
     );
    
integer i;

initial
    begin

    $monitor ("(%d + %d + %d) = %d", rA, rB, rCarry, {wCarry, wSum});

    // Use a for loop to apply random values to the input  
    for (i = 0; i < 5; i = i+1) 
    begin  
        #10 
        rA <= $random;  
        rB <= $random;  
        rCarry <= $random;  
    end 
    $stop; //stop simulation  
end

endmodule
