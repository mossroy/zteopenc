#!/bin/bash
wget http://download.ztedevice.com/UpLoadFiles/product/643/5522/soft/2015042909034130.zip
unzip 2015042909034130.zip
cd France\ OPEN\ C\ SD\ card\ upgrading\ instruction\ \&\ software\ package\(L\ leclerc\ telecom\)-268280B0304FFOS_FR_ZTE_OPENCV1.0.0B03
unzip update.zip
cp NON-HLOS.bin ..
cd ..
rm -rf France\ OPEN\ C\ SD\ card\ upgrading\ instruction\ \&\ software\ package\(L\ leclerc\ telecom\)-268280B0304FFOS_FR_ZTE_OPENCV1.0.0B03
rm 2015042909034130.zip
wget http://www.ztefrance.com/downloads/Pack_root_du_ZTE_Open_C.zip
unzip Pack_root_du_ZTE_Open_C.zip
cd Pack\ root\ du\ ZTE\ Open\ C
unzip P821A10_FR_ENG_20140806.zip
rm P821A10_FR_ENG_20140806.zip
cp ../NON-HLOS.bin P821A10_FR_ENG_20140806/
zip -r P821A10_FR_ENG_20140806_avec_maj_firmware.zip P821A10_FR_ENG_20140806
rm -rf P821A10_FR_ENG_20140806
cd ..
zip -r Pack_root_du_ZTE_Open_C_avec_MAJ_firmware.zip Pack\ root\ du\ ZTE\ Open\ C
rm -rf Pack\ root\ du\ ZTE\ Open\ C
