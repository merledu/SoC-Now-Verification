li x3 0x40002000 #GPIO
li s0 0x40001000 #UART
li x5 0x40000000 #DCCM



li x6 , 10 #buad_rate
li x9 , 1
li x10 , 0
sw x6 , 0(s0) #configuring control register
li x7 , 0x77
sw x7 , 4(s0) #write data
sw x9 , 16(s0) #tx_enable
sw x10 , 16(s0) #tx_disable
rep:
jal rep