li x8 0x40000000 #DCCM
li x9 0x40001000 #GPIO
li x10 0x40002000 #UART

li x4 0xff        
li x6 0x77
sw x4, 0x1c(x9)     #configure gpio pins as output
sw x6 0x10(x9)      #turn pins high by storing 0x77
