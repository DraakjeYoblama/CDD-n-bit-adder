`timescale 1ns / 1ps

module full_adder_TB();
    
  // inputs (define as reg)
  reg rA = 0;
  reg rB = 0;
  reg rCarry = 0;
  reg rRefSum = 0;
  reg rRefCarry = 0;
  
  // outputs (define as wire)
  wire    wSum, wCarry;
    
  // instantiate module under test
  full_adder #() full_adder_inst
    (.iA(rA),
     .iB(rB),
     .iCarry(rCarry),
     .oSum(wSum),
     .oCarry(wCarry)
     );
    
  // input stimulus
  initial
    begin
    
      rB = 1;
      rRefSum = 1;
      rRefCarry = 0;
      #(5);
      
      rA = 1;
      rRefSum = 0;
      rRefCarry = 1;
      #(5);
      
      rB = 0;
      rRefSum = 1;
      rRefCarry = 0;
      #(5);
      
      rCarry = 1;
      rRefSum = 0;
      rRefCarry = 1;
      #(5);
      
      rA = 0;
      rRefSum = 1;
      rRefCarry = 0;
      #(5);
      
      rB = 1;
      rRefSum = 0;
      rRefCarry = 1;
      #(5);
      
      rA = 1;
      rRefSum = 1;
      rRefCarry = 1;
      #(5);
      
      // let the counter run for 10 clock cycles
      #(10);
      
      $stop;        //stop simulation  
           
    end
     
endmodule
