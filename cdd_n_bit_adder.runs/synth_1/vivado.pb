
u
Command: %s
53*	vivadotcl2D
0synth_design -top uart_top -part xc7z020clg400-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7z020clg400-12default:defaultZ21-403h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
280962default:defaultZ8-7075h px� 
�
%s*synth2�
wStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 1013.195 ; gain = 0.000
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
uart_top2default:default2
 2default:default2�
tC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.srcs/sources_1/imports/Tijdelijk/uart_top.v2default:default2
32default:default8@Z8-6157h px� 
d
%s
*synth2L
8	Parameter OPERAND_WIDTH bound to: 512 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter ADDER_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter NBYTES bound to: 64 - type: integer 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter CLK_FREQ bound to: 125000000 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter s_IDLE bound to: 3'b000 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter s_WAIT_RX bound to: 3'b001 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter s_WAIT_ADDER bound to: 3'b010 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter s_TX bound to: 3'b011 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter s_WAIT_TX bound to: 3'b100 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter s_DONE bound to: 3'b101 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
uart_tx2default:default2
 2default:default2�
sC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.srcs/sources_1/imports/Tijdelijk/uart_tx.v2default:default2
32default:default8@Z8-6157h px� 
e
%s
*synth2M
9	Parameter CLK_FREQ bound to: 125000000 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter CLKS_PER_BIT bound to: 1085 - type: integer 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter sIDLE bound to: 3'b000 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter sTX_START bound to: 3'b001 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter sTX_DATA bound to: 3'b010 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter sTX_STOP bound to: 3'b011 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter sDONE bound to: 3'b100 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_tx2default:default2
 2default:default2
12default:default2
12default:default2�
sC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.srcs/sources_1/imports/Tijdelijk/uart_tx.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
uart_rx2default:default2
 2default:default2{
eC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.srcs/sources_1/new/uart_rx.v2default:default2
32default:default8@Z8-6157h px� 
e
%s
*synth2M
9	Parameter CLK_FREQ bound to: 125000000 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter CLKS_PER_BIT bound to: 1085 - type: integer 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter sIDLE bound to: 3'b000 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter sRX_START bound to: 3'b001 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter sRX_DATA bound to: 3'b010 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter sSTOP bound to: 3'b011 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter sDONE bound to: 3'b100 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_rx2default:default2
 2default:default2
22default:default2
12default:default2{
eC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.srcs/sources_1/new/uart_rx.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
mp_adder2default:default2
 2default:default2|
fC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.srcs/sources_1/new/mp_adder.v2default:default2
32default:default8@Z8-6157h px� 
d
%s
*synth2L
8	Parameter OPERAND_WIDTH bound to: 512 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter ADDER_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter N_ITERATIONS bound to: 16 - type: integer 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter s_IDLE bound to: 3'b000 
2default:defaulth p
x
� 
U
%s
*synth2=
)	Parameter s_STORE_OPS bound to: 3'b001 
2default:defaulth p
x
� 
U
%s
*synth2=
)	Parameter s_ADD_FIRST bound to: 3'b010 
2default:defaulth p
x
� 
U
%s
*synth2=
)	Parameter s_ADD_WORDS bound to: 3'b011 
2default:defaulth p
x
� 
P
%s
*synth28
$	Parameter s_DONE bound to: 3'b100 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2&
optimised_adder_Nb2default:default2
 2default:default2�
pC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.srcs/sources_1/new/optimised_adder_Nb.v2default:default2
32default:default8@Z8-6157h px� 
a
%s
*synth2I
5	Parameter ADDER_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter UNIT_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2)
carry_lookahead_adder2default:default2
 2default:default2�
sC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.srcs/sources_1/new/carry_lookahead_adder.v2default:default2
32default:default8@Z8-6157h px� 
_
%s
*synth2G
3	Parameter UNIT_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2&
partial_full_adder2default:default2
 2default:default2~
hC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.srcs/sources_1/new/full_adder.v2default:default2
152default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
partial_full_adder2default:default2
 2default:default2
32default:default2
12default:default2~
hC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.srcs/sources_1/new/full_adder.v2default:default2
152default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
carry_lookahead_adder2default:default2
 2default:default2
42default:default2
12default:default2�
sC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.srcs/sources_1/new/carry_lookahead_adder.v2default:default2
32default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
optimised_adder_Nb2default:default2
 2default:default2
52default:default2
12default:default2�
pC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.srcs/sources_1/new/optimised_adder_Nb.v2default:default2
32default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mp_adder2default:default2
 2default:default2
62default:default2
12default:default2|
fC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.srcs/sources_1/new/mp_adder.v2default:default2
32default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_top2default:default2
 2default:default2
72default:default2
12default:default2�
tC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.srcs/sources_1/imports/Tijdelijk/uart_top.v2default:default2
32default:default8@Z8-6155h px� 
�
%s*synth2�
wFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1013.195 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 1013.195 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 1013.195 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0352default:default2
1013.1952default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2�
yC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.srcs/constrs_1/imports/Tijdelijk/PYNQ-Z2v1.0.xdc2default:default8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2

oXORResult2default:default2�
yC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.srcs/constrs_1/imports/Tijdelijk/PYNQ-Z2v1.0.xdc2default:default2
272default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2�
yC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.srcs/constrs_1/imports/Tijdelijk/PYNQ-Z2v1.0.xdc2default:default2
272default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	oCarryOut2default:default2�
yC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.srcs/constrs_1/imports/Tijdelijk/PYNQ-Z2v1.0.xdc2default:default2
282default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2�
yC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.srcs/constrs_1/imports/Tijdelijk/PYNQ-Z2v1.0.xdc2default:default2
282default:default8@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2�
yC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.srcs/constrs_1/imports/Tijdelijk/PYNQ-Z2v1.0.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
yC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.srcs/constrs_1/imports/Tijdelijk/PYNQ-Z2v1.0.xdc2default:default2.
.Xil/uart_top_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1013.1952default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0152default:default2
1013.1952default:default2
0.0002default:defaultZ17-268h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Constraint Validation : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1013.195 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7z020clg400-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1013.195 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1013.195 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2$
rFSM_Current_reg2default:default2
uart_tx2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2$
rFSM_Current_reg2default:default2
uart_rx2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2$
rFSM_current_reg2default:default2
mp_adder2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
rFSM_reg2default:default2
uart_top2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                   sIDLE |                            00001 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_               sTX_START |                            00010 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_                sTX_DATA |                            00100 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                sTX_STOP |                            01000 |                              011
2default:defaulth p
x
� 
�
%s
*synth2s
_                   sDONE |                            10000 |                              100
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2$
rFSM_Current_reg2default:default2
one-hot2default:default2
uart_tx2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                   sIDLE |                             0001 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_               sRX_START |                             0010 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_                sRX_DATA |                             0100 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                   sDONE |                             1000 |                              100
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2$
rFSM_Current_reg2default:default2
one-hot2default:default2
uart_rx2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                  s_IDLE |                              000 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_             s_STORE_OPS |                              001 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_             s_ADD_FIRST |                              010 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_             s_ADD_WORDS |                              011 |                              011
2default:defaulth p
x
� 
�
%s
*synth2s
_                  s_DONE |                              100 |                              100
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2$
rFSM_current_reg2default:default2

sequential2default:default2
mp_adder2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                  s_IDLE |                           000001 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_               s_WAIT_RX |                           000010 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_            s_WAIT_ADDER |                           000100 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                    s_TX |                           001000 |                              011
2default:defaulth p
x
� 
�
%s
*synth2s
_               s_WAIT_TX |                           010000 |                              100
2default:defaulth p
x
� 
�
%s
*synth2s
_                  s_DONE |                           100000 |                              101
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
rFSM_reg2default:default2
one-hot2default:default2
uart_top2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1013.195 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   12 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   11 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    7 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    1 Bit       Adders := 8     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit       Adders := 8     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    1 Bit       Adders := 8     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    1 Bit       Adders := 8     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 64    
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              520 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              512 Bit    Registers := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               12 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 7     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   6 Input  520 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input  513 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input  512 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input   12 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   12 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input   12 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   6 Input    7 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   6 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    5 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 5     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 5     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   6 Input    1 Bit        Muxes := 9     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1013.195 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1013.195 ; gain = 0.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Timing Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1098.496 ; gain = 85.301
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
{Finished Technology Mapping : Time (s): cpu = 00:00:23 ; elapsed = 00:00:24 . Memory (MB): peak = 1099.543 ; gain = 86.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
uFinished IO Insertion : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1099.543 ; gain = 86.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1099.543 ; gain = 86.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 1099.543 ; gain = 86.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 1099.543 ; gain = 86.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 1099.543 ; gain = 86.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 1099.543 ; gain = 86.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |     3|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT2   |    48|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT3   |    47|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT4   |   110|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT5   |  1516|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT6   |    73|
2default:defaulth px� 
D
%s*synth2,
|8     |FDRE   |  3197|
2default:defaulth px� 
D
%s*synth2,
|9     |FDSE   |     3|
2default:defaulth px� 
D
%s*synth2,
|10    |IBUF   |     3|
2default:defaulth px� 
D
%s*synth2,
|11    |OBUF   |     1|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 1099.543 ; gain = 86.348
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:19 ; elapsed = 00:00:25 . Memory (MB): peak = 1099.543 ; gain = 86.348
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 1099.543 ; gain = 86.348
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0362default:default2
1111.4572default:default2
0.0002default:defaultZ17-268h px� 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
32default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1111.4572default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
372default:default2
22default:default2
22default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:302default:default2
00:00:332default:default2
1111.4572default:default2
98.2622default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2v
bC:/Users/douwe/Documents/Vivado Projects/CDD-n-bit-adder/cdd_n_bit_adder.runs/synth_1/uart_top.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2z
fExecuting : report_utilization -file uart_top_utilization_synth.rpt -pb uart_top_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Apr 25 20:29:59 20242default:defaultZ17-206h px� 


End Record