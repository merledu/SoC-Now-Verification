li x3 0x40002000 #GPIO
li s0 0x40001000 #UART
li x5 0x40000000 #DCCM


li x6 7         #load immediate 7 in register x6
addi x6 x6 8    #do simple addition 
sw x6 0x8(x5)   #store value of register x6
lw x9 0x8(x5)   #load that value in register x9


