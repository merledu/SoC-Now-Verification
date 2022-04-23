li x12 1    #enable 
li x13 0	  #disable

#DCCM
li x5 0x40000000 
li x6 109
sw x6 0x8(x5)
lw x7 0x8(x5)

#GPIO

li x3 0x40001000 #GPIO
li x4 0xff
sw x4, 0x1c(x3)
sw x7 0x10(x3)


#UART
li x8 0x40003000
li x10 4
li x11 0x5A

sw x10 , 0x0(x8)
sw x7 , 0x4(x8)
sw x12, 0x10(x8)
sw x13, 0x10(x8)


#I2C
li x14 0x40004000
li x15 99 #for addr
li x16 0 #for write bit

sw x15 0x4(x14)
sw x16 0x8(x14)
sw x7 0x10(x14)
sw x12 0x0(x14)
sw x13 0x0(x14)


# SPI-FLASH
li x20 0x40002000
li x21 0xffffffff
li x22 0x8

#sw x22, 0x0(x20)
sw x21, 0x4(x20)

rep:
jal rep