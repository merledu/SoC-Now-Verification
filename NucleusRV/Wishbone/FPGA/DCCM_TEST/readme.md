## DCCM TEST

The purpose of this test is to check the functionality of Data memory. To check either data is store and load properly. 

Memory Mapping:

0x40000000 #DCCM
0x40001000 #GPIO
0x40002000 #UART

```
li x8 0x40000000 #DCCM
li x9 0x40001000 #GPIO
li x10 0x40002000 #UART


li x6 7         #load immediate 7 in register x6
addi x6 x6 8    #do simple addition 
sw x6 0x8(x8)   #store value of register x6
lw x11 0x8(x8)   #load that value in register x11
```

It is working perfectly fine!
