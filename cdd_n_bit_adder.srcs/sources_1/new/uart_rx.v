`timescale 1ns / 1ps

module uart_rx #(
  parameter   CLK_FREQ      = 125_000_000,
  parameter   BAUD_RATE     = 115_200,
  // Example: 125 MHz Clock / 115200 baud UART -> CLKS_PER_BIT = 1085 
  parameter   CLKS_PER_BIT  = CLK_FREQ / BAUD_RATE
)
(
  input wire        iClk, iRst,
  input wire        iRxSerial,
  output wire [7:0] oRxByte, 
  output wire       oRxDone
);

  // State definition  
  localparam sIDLE         = 3'b000;
  localparam sRX_START     = 3'b001;
  localparam sRX_DATA      = 3'b010;
  localparam sSTOP         = 3'b011;
  localparam sDONE         = 3'b100;
  
  // -> FSM state
  reg [2:0] rFSM_Current, wFSM_Next; 
  
  // -> counter to keep track of the clock cycles
  reg [$clog2(CLKS_PER_BIT):0]   rCnt_Current, wCnt_Next;
    
  // -> counter to keep track of received bits
  // (between 0 and 7)
  reg [2:0] rBit_Current, wBit_Next;
  
  // -> the byte we are receiving
  reg [7:0] rRxData_Current, wRxData_Next;
  
  // Double-register the input wire to prevent metastability issues
  reg rRx1 = 1;
  reg rRx2 = 1;

// Describe all previous registers
  //------------------------------------------ 
  // Needs to be done with a clocked always block 
  // Don't forget the synchronous reset (default state)
  
  always @(posedge iClk)
  begin
      rRx1 <= iRxSerial;
      rRx2 <= rRx1;
    if (iRst==1)
      begin
        rFSM_Current <= sIDLE;
        rCnt_Current <= 0;
        rBit_Current <= 0;
        rRxData_Current <= 0;
      end
    else
      begin
        rFSM_Current <= wFSM_Next;
        rCnt_Current <= wCnt_Next;
        rBit_Current <= wBit_Next;
        rRxData_Current <= wRxData_Next;
      end
  end
  
  // Next state logic
  //------------------------------------------ 
  // -> this is a COMBINATIONAL module, which specifies the next state 
  //    of the FSM and also the next value of the previous registers
  // -> to AVOID LATCHES, you need to make sure all the next register values
  //    (rFSM_Next, rCnt_Next, rBit_Next, rRxData_Next)
  //    are defined for every possible condition
     
  always @(*)
    begin
      
      case (rFSM_Current)
      
        // IDLE STATE:
        // -> we simply wait here until start signal
        // -> when started move to sRX_START
        sIDLE :
          begin
            wCnt_Next = 0;
            wBit_Next = 0;
            wRxData_Next = 0;
             
            if (rRx2 == 0)
              begin
                wFSM_Next = sRX_START;
              end
            else
             begin    
                wFSM_Next = sIDLE;
             end
          end 
           
        // RX_START STATE:
        // -> Wait for 1.5 bits = start signal + half a bit so you can sample in the middle
        // RX_DATA samples at the end of the clock counter
        // Then move on to RX_DATA state
        sRX_START :
            begin
              wRxData_Next = rRxData_Current;
              wBit_Next = 0;
               
              if (rCnt_Current < (CLKS_PER_BIT + CLKS_PER_BIT/2 - 1) )
                begin
                  wFSM_Next = sRX_START;
                  wCnt_Next = rCnt_Current + 1;
                end
              else
                begin
                  wFSM_Next = sRX_DATA;
                  wCnt_Next = 0;
                end
            end 
           
           
          // RX_DATA STATE:
          // -> we stay here for the duration of the byte receiving,
          //    which takes 8 * CLKS_PER_BIT clock cycles     
          // -> we use rCnt_Current to keep track of clock cycles 
          // -> we use rBit_Current to keep track of number of bits
        
          // -> when rBit_Current increases, we shift the contents of the
          //    rRxData_Current register
          // -> why? by doing so, the LSB of rRxData_Current is empty
          //    so it can receive the newest bit.
          // -> see below, where oRxSerial is assigned the value of rRxData_Current[0]
          
          sRX_DATA :
            begin
              
              if (rCnt_Current == 0 ) begin // sample on the first cycle
                wRxData_Next = { rRx2, rRxData_Current[7:1] }; // shift rRxData_Current one bit to the right and append rRx2
                wFSM_Next = sRX_DATA;
                wCnt_Next = rCnt_Current + 1;
                 wBit_Next = rBit_Current;
              
              end else if (rCnt_Current < (CLKS_PER_BIT - 1) )
                begin // count the clock cycles until the next bit needs to be sampled
                  wFSM_Next = sRX_DATA;
                  wCnt_Next = rCnt_Current + 1;
                  wRxData_Next = rRxData_Current;
                  wBit_Next = rBit_Current;
                end
              else
                begin
                  wCnt_Next = 0;
                  wRxData_Next = rRxData_Current;
                         
                  if (rBit_Current != 7)
                    begin // sample the data and move on to next bit
                      wFSM_Next = sRX_DATA;
                      wBit_Next = rBit_Current + 1;
                    end
                  else
                    begin // done
                      wFSM_Next = sDONE;
                      wBit_Next = 0;
                    end
                end
            end  
            
          // STOP STATE:
          // -> we stay here 1 clock cycle, we will use this state
          //    to assert oRxDone to 1 for a clock cycle
          sSTOP :
            begin
              wRxData_Next = rRxData_Current;
              wBit_Next = 0;
              
              if (rCnt_Current < (CLKS_PER_BIT - 1) )
                begin
                  wFSM_Next = sSTOP;
                  wCnt_Next = rCnt_Current + 1;
                end
              else
                begin
                  wFSM_Next = sDONE;
                  wCnt_Next = 0;
                end
            end
            
            
          // DONE STATE:
          // -> we stay here 1 clock cycle, we will use this state
          //    to assert oRxDone to 1 for a clock cycle
          sDONE :
            begin
              wFSM_Next = sIDLE;
              wRxData_Next = rRxData_Current;
              wBit_Next = 0;
              wCnt_Next = 0;
            end
           
           
          default :
            begin
              wFSM_Next = sIDLE;
              wCnt_Next = 0;
              wBit_Next = 0;
              wRxData_Next = 0;
            end 
        endcase
    end
 
 
  // 3. Output logic
  
  assign oRxByte = rRxData_Current;
  
  // Output oRxDone : easiest is to define it with a simple
  // continuous assignment
  //  -> it is '0' by default
  //  -> it is '1' during sDONE
  
  assign oRxDone = (rFSM_Current == sDONE) ? 1 : 0;
   
endmodule

