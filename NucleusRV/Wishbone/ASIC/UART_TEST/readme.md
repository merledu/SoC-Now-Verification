## DCCM TEST

The purpose of this test is to check the functionality of Transmitter of the UART. 

1) First we load base address of UART.
2) Set baud rate
3) Then write data in tx register.
4) And enable UART transmitter to transmit data.

Memory Mapping:

0x40001000 #GPIO
0x40002000 #UART
0x40000000 #DCCM

```
li x3 0x40001000 #GPIO
li s0 0x40002000 #UART
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
```

It is working perfectly fine!
