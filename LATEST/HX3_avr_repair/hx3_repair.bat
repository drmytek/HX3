echo off
echo Usage: hx3_repair COMPORT
echo with COMPORT = port number (1..31) of FTDI cable

echo Insert CONF_DIS jumper JP5 and RESET jumper on PL1 position R
echo Remove Reset Jumper and press ENTER key exactly same time!
pause
avrdude -C "avrdude.conf" -pm644p -cstk500v1 -P COM%1 -b57600 -U flash:w:"HX3_repair.hex":i -U eeprom:w:"HX3_repair.eep":i

echo Remove CONF_DIS Jumper JP5
echo Use HX3 Remote to update to appropriate firmware!
pause
