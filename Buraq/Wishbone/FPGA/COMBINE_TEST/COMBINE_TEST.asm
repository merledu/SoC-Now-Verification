li x3 0x40002000 #GPIO
li s0 0x40001000 #UART
li x5 0x40000000 #DCCM

li a0 4
li a2 1
sw a0 0(s0)    #baud rate
sw a2 12(s0)   #enable rx
li a4 1
loop:
lw a3 20(s0)    #check if receive done status high
beq a4 a3 exit  #exit from loop
jal loop
exit:
lw a5 8(s0)     #load data from rx reg

sw a5 0x8(x5)   #store data in data memory
lw x6 0x8(x5)   #load data from data memory

li x4 0xff     
sw x4, 0x1c(x3)   #configure gpio pins as output
sw x6 0x10(x3)    #turn pins high by storing data

sw a2 16(s0)      #tx enable
sw x6 4(s0)       #put data in tx reg
sw x0 24(s0)
rep:
jal rep