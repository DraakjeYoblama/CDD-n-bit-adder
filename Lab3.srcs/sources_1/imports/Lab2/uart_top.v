`timescale 1ns / 1ps

module uart_top #(
    parameter   OPERAND_WIDTH = 512,
    parameter   ADDER_WIDTH   = 16,
    parameter   NBYTES        = OPERAND_WIDTH / 8, 
    // values for the UART (in case we want to change them)
    parameter   CLK_FREQ      = 125_000_000,
    parameter   BAUD_RATE     = 115_200
  )  
  (
    input   wire   iClk, iRst,
    input   wire   iRx,
    output  wire   oTx
  );
  
  // Buffer to exchange data between Pynq-Z2 and laptop
  reg [NBYTES*8-1:0] rA, rB;
  reg [(NBYTES+1)*8-1:0] rRes;
  
  // State definition  
  localparam s_IDLE         = 3'b000;
  localparam s_WAIT_RX_A    = 3'b001;
  localparam s_WAIT_RX_B    = 3'b010;
  localparam s_WAIT_RES     = 3'b011;
  localparam s_TX_RES       = 3'b100;
  localparam s_WAIT_TX      = 3'b101;  
  localparam s_DONE         = 3'b110;
   
  // Declare all variables needed for the finite state machine 
  // -> the FSM state
  reg [2:0]   rFSM;  
  
  // Connection to MP ADDER (inputs = registers, outputs = wires)
   reg         rMpStart;
   
   wire        wMpDone;
  
  // Connection to UART RX (inputs = registers, outputs = wires)
  wire         wRxDone;
  wire [NBYTES + 1:0]   wRxByte;
  
  // Connection to UART TX (inputs = registers, outputs = wires)
  reg         rTxStart;
  reg [NBYTES + 1:0]   rTxByte;
  
  wire        wTxBusy;
  wire        wTxDone;
  
  // Instantiate MP ADDER module
  mp_adder #(
    .OPERAND_WIDTH(OPERAND_WIDTH),
    .ADDER_WIDTH(ADDER_WIDTH)
  ) mp_adder (
    .iClk(iClk),
    .iRst(iRst),
    .iStart(rMpStart),
    .iOpA(rA),
    .iOpB(rB),
    .oRes(rRes), 
    .oDone(wMpDone) 
  );
      
  // Instantiate UART RX module
  uart_rx #(
    .CLK_FREQ(CLK_FREQ),
    .BAUD_RATE(BAUD_RATE)
  ) rx (
    .iClk(iClk),
    .iRst(iRst),
    .iRxSerial(iRx),
    .oRxByte(wRxByte), // Connect RX byte output 
    .oRxDone(wRxDone) // Connect RX done output
  );
      
  uart_tx #(  .CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE) )
  UART_TX_INST
    (.iClk(iClk),
     .iRst(iRst),
     .iTxStart(rTxStart),
     .iTxByte(rTxByte),
     .oTxSerial(oTx),
     .oTxBusy(wTxBusy),
     .oTxDone(wTxDone)
     );
     
  reg [$clog2(NBYTES):0] rCnt;
  
  always @(posedge iClk)
  begin
  
  // reset all registers upon reset
  if (iRst == 1) 
    begin
      rA <= 0;
      rB <= 0;
      rFSM <= s_IDLE;
      rTxStart <= 0;
      rCnt <= 0;
      rTxByte <= 0;
      rMpStart <= 0;
      rRes <= 0;
    end 
  else 
    begin
      case (rFSM)
   
        s_IDLE :
          begin
            rFSM <= s_WAIT_RX_A;
          end
          
        s_WAIT_RX_A:
          begin
          if(wRxDone)
            begin
           rA <= {rA[(NBYTES*8)-9:0], wRxByte};      
            if (rCnt <(NBYTES -1))
              begin
              rCnt = rCnt + 1;
              rFSM <= s_WAIT_RX_A;
              end
            else
              begin
              rFSM <= s_WAIT_RX_B;  
              rCnt = 0;
              end
            end
        else
            begin
            rFSM <= s_WAIT_RX_A;
            end
          end
          
          s_WAIT_RX_B:
          begin
          if(wRxDone)
            begin
           rB <= {rB[(NBYTES*8)-9:0], wRxByte};      
            if (rCnt <(NBYTES -1))
              begin
              rCnt = rCnt + 1;
              rFSM <= s_WAIT_RX_B;
              end
            else
              begin
              rFSM <= s_WAIT_RES;  
              rCnt = 0;
              end
            end
        else
            begin
            rFSM <= s_WAIT_RX_B;
            end
          end
          
          s_WAIT_RES:
          begin
          if(wMpDone)
            begin
              rFSM <= s_TX_RES;
            end
          else
            begin
            rFSM <= s_WAIT_RES;
            end
          end
             
        s_TX_RES:
          begin
            if ( (rCnt < NBYTES + 1) && (wTxBusy ==0) ) 
              begin
                rFSM <= s_WAIT_TX;
                rTxStart <= 1; 
                rTxByte <= rRes[(NBYTES+1)*8-1:(NBYTES+1)*8-8];            // we send the uppermost byte
                rRes <= {rRes[(NBYTES+1)*8-9:0] , 8'b0000_0000};    // we shift from right to left
                rCnt <= rCnt + 1;
              end 
            else 
              begin
                rFSM <= s_DONE;
                rTxStart <= 0;
                rTxByte <= 0;
                rCnt <= 0;
              end
            end 
            
            s_WAIT_TX :
              begin
                if (wTxDone) begin
                  rFSM <= s_TX_RES;
                end else begin
                  rFSM <= s_WAIT_TX;
                  rTxStart <= 0;                   
                end
              end 
              
            s_DONE :
              begin
                rFSM <= s_IDLE;
              end 

            default :
              rFSM <= s_IDLE;
             
          endcase
      end
    end       
    
endmodule
