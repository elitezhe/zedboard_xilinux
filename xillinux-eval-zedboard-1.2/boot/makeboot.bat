@ECHO OFF
if EXIST boot.bin del boot.bin

F:\Xilinx\ISE\14.6\ISE_DS\ISE\bin\nt\bootgen -image xillybus.bif -o i boot.bin