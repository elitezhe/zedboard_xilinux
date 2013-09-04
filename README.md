## Xilinx ZedBoard Run Xilinux ##

**Zhang Zhe**: [zhangzhe.zhe@qq.com]

2013/09


----------


* Environment: 
    * Win7 SP1 x86 Ultimate 
    * ISE Design Suite 14.6 <http://www.xilinx.com/support/answers/56462.html>


----------


* References:
    * xillybus_getting_started_zynq.pdf <http://xillybus.com/downloads/doc/xillybus_getting_started_zynq.pdf>


----------


- Files Needed:
    * xillinux-1.1.img.gz (472 MB)<http://xillybus.com/downloads/xillinux-eval-zedboard-1.2.zip>
    * xillinux-eval-zedboard-1.2.zip (953 KB)<http://xillybus.com/downloads/xillinux-1.1.img.gz>

All the references and Files Needed can be downloaded from: http://xillybus.com/xillinux/ 
Scroll to the end of this webpage, you'll find the Capital "Download".


----------

How to boot Xilinux using this project.

I have already finished process needed to create a boot.bin file, what you need to do is 

- as follow:
    * Insert your SD card, open the USB Image Tool in this project.
    * Click "Restore", chose file type "img.gz"(2nd file type), then chose the "xillinux-1.1.img.gz", click "OK", after about 5 minutes, process finished.
    * Copy "boot.bin" to your SD card.
    * Follow steps in "xillybus_getting_started_zynq.pdf" 4.2 section check the jump hat are set like the picture shown in pdf page 21.
    * Unmount your SD card safely, and insert it to the ZedBoard.
    * Plug in your USB mouse and keyboard to the USB OTG port.(You should use the OTG cable provided in zedboard box.)
    * Power up.(You may type cmd "startx" to start ubuntu GUI)