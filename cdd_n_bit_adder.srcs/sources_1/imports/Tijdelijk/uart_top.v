`timescale 1ns / 1ps

module uart_top #(
    parameter   OPERAND_WIDTH = 512,
    parameter   ADDER_WIDTH   = 32,
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
  
  // Buffers to exchange data between Pynq-Z2 and laptop
  reg [NBYTES*8-1:0] rA, rB;
  reg [(NBYTES+1)*8-1:0]   rRes;
  wire [NBYTES*8:0] wRes;
  
  // State definition  
  localparam s_IDLE         = 3'b000;
  localparam s_WAIT_RX      = 3'b001;
  localparam s_WAIT_ADDER   = 3'b010;
  localparam s_TX           = 3'b011;
  localparam s_WAIT_TX      = 3'b100;
  localparam s_DONE         = 3'b101;
   
  // Declare all variables needed for the finite state machine 
  // -> the FSM state
  reg [2:0]   rFSM;  
  // -> receiving first or second operand
  reg rOpCnt;
  
    reg [$clog2(NBYTES):0] rCnt;
    reg rAdderStart;
    wire wAdderDone;
  
  // Connection to UART TX (inputs = registers, outputs = wires)
  reg         rTxStart;
  reg [7:0]   rTxByte;
  
  wire [7:0] wRxByte;
  wire        wTxBusy, wTxDone, wRxDone;
      
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
     
     uart_rx #(  .CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE) )
  UART_RX_INST
    (.iClk(iClk),
     .iRst(iRst),
     .oRxByte(wRxByte),
     .iRxSerial(iRx),
     .oRxDone(wRxDone)
     );
     
     mp_adder #( .OPERAND_WIDTH(OPERAND_WIDTH), .ADDER_WIDTH(ADDER_WIDTH) ) 
    mp_adder_inst   (
        .iClk( iClk ),
        .iRst( iRst ),
        .iStart( rAdderStart ),
        .iOpA( rA ), 
        .iOpB( rB ),
        .oRes( wRes ),
        .oDone( wAdderDone )
      );
      
 
  always @(posedge iClk)
  begin
  
  // reset all registers upon reset
  if (iRst == 1 ) 
    begin
      rFSM <= s_IDLE;
      rTxStart <= 0;
      rCnt <= 0;
      rTxByte <= 0;
      rA <= 0;
      rB <= 0;
      rRes <= 0;
      rOpCnt <= 0;
      rAdderStart <= 0;
    end 
  else 
    begin
      case (rFSM)
   
        s_IDLE :
          begin
            rFSM <= s_WAIT_RX;
          end
          
        s_WAIT_RX :
          begin
            // a shift register where rBuffer stores the bytes every time uart_rx is done reading a byte. 
            if (wRxDone) 
                begin
                if (rOpCnt == 0)
                begin
                rA <= {rA[NBYTES*8-9:0],  wRxByte}; // shift rBuffer one byte to the left and append the new wRxByte 
                end else begin
                rB <= {rB[NBYTES*8-9:0],  wRxByte}; // shift rBuffer one byte to the left and append the new wRxByte 
                end
                
                if (rCnt == NBYTES-1) // final byte
                    begin
                        if (rOpCnt == 0) // final byte of operand A
                        begin
                        rFSM <= s_WAIT_RX;
                        rCnt <= 0;
                        rOpCnt <= 1;
                        rAdderStart <= 0;
                        end else begin // final byte of operand B
                        rFSM <= s_WAIT_ADDER;
                        rCnt <= 0;
                        rOpCnt <= 0;
                        rAdderStart <= 1;
                        end
                    end
                else
                    begin
                   rCnt <= rCnt + 1;
                    rFSM <= s_WAIT_RX;  
                    end     
                end
            else
                begin
                    rFSM <= s_WAIT_RX;
                end
          end
             
        s_WAIT_ADDER :
          begin
          rAdderStart <= 0;
          if (wAdderDone)
              begin
              rFSM <= s_TX;
              rRes <= wRes;
              end else begin
              rFSM <= s_WAIT_ADDER;
              rRes <= 0;
              end
          end
        
        s_TX :
          begin
           if ( (rCnt < NBYTES+1) && (wTxBusy == 0) ) 
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
                  rFSM <= s_TX;
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
