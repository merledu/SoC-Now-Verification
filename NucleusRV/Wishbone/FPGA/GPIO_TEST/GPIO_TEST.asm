li x3 0x40002000    #GPIO
li s0 0x40001000    #UART
li x5 0x40000000    #DCCM


li x4 0xff        
li x6 0x77
sw x4, 0x1c(x3)     #configure gpio pins as output
sw x6 0x10(x3)      #turn pins high by storing 0x77