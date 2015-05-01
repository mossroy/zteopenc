#!/bin/bash
#
# This script generates a root pack for the ZTE Open C FR with an updated modem firmware
# It downloads the 1.3B03 update from ZTE, extracts the modem firmware in it,
# and updates it in the root pack from ZTE, generating a new root pack
#
# The reason for this script is ZTE did not grant us the right to redistribute
# this modem firmware for use in the community builds : http://builds.firefoxos.mozfr.org
#
# This script is still quick and dirty
# LGPL v3 license
# Mossroy
#
wget http://download.ztedevice.com/UpLoadFiles/product/643/5522/soft/2015042909034130.zip
unzip 2015042909034130.zip
cd France\ OPEN\ C\ SD\ card\ upgrading\ instruction\ \&\ software\ package\(L\ leclerc\ telecom\)-268280B0304FFOS_FR_ZTE_OPENCV1.0.0B03
unzip update.zip NON-HLOS.bin
cp NON-HLOS.bin ..
cd ..
rm -rf France\ OPEN\ C\ SD\ card\ upgrading\ instruction\ \&\ software\ package\(L\ leclerc\ telecom\)-268280B0304FFOS_FR_ZTE_OPENCV1.0.0B03
rm 2015042909034130.zip
wget http://www.ztefrance.com/downloads/Pack_root_du_ZTE_Open_C.zip
unzip Pack_root_du_ZTE_Open_C.zip
cd Pack\ root\ du\ ZTE\ Open\ C
mkdir P821A10_FR_ENG_20140806
mv ../NON-HLOS.bin P821A10_FR_ENG_20140806/
zip -r P821A10_FR_ENG_20140806.zip P821A10_FR_ENG_20140806
rm -rf P821A10_FR_ENG_20140806
cd ..
zip -r Pack_root_du_ZTE_Open_C.zip Pack\ root\ du\ ZTE\ Open\ C/P821A10_FR_ENG_20140806.zip
rm -rf Pack\ root\ du\ ZTE\ Open\ C
mv Pack_root_du_ZTE_Open_C.zip Pack_root_du_ZTE_Open_C_avec_MAJ_firmware.zip
