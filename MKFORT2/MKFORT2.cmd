rem run UASAP for source files

cd ..\UASAP

call UASAP ..\MKFORT2\fort2.sap
call UASAP ..\MKFORT2\CC.sap
call UASAP ..\MKFORT2\F2Diag.sap
call UASAP ..\MKFORT2\LibCTRL.sap
call UASAP ..\MKFORT2\NYBL1.sap

cd ..\MKFORT2

rem split card decks 
mkdir fort2
SapSplit FORT2.TXT fort2.cbn fort2\
Call F_copy.cmd

SapSplit CC.lst CC.cbn fort2\
Call C_copy.cmd
del /Q  fort2\Line*

SapSplit F2Diag.lst F2Diag.cbn fort2\
Call D_copy.cmd
del /Q fort2\Line*

rem Patch control cards
call PatchCC.cmd
del /Q fort2\CC*

rem create files 1 and 2 of 4k and 8k systemtape 
CopyCards NYBL1.cbn fort2\NYBL1.cbn
call F4k.cmd
call F8k.cmd

rem delete files
del /Q fort2\NR*
del /Q fort2\EDT*
del /Q fort2\REC*
del /Q fort2\END*

rem create library
SapSplit LibCTRL.lst LibCTRL.cbn fort2\
Call Lib_copy.cmd
del /Q  fort2\Line*

rem create diag
Call Diag_copy.cmd
del /Q fort2\Page*

rem create complete card deck for 4k and 8k
cd fort2
CopyCards F4k.cbn+LIB.cbn+DIA.cbn ..\F2_4k.cbn
CopyCards F8k.cbn+LIB.cbn+DIA.cbn ..\F2_8k.cbn
del /Q *
cd ..
rmdir fort2
del /Q *.lst

rem create dummy master tape
MasterTape mt5.tap

rem create 4k and 8k system tape
Sim704 F2_4k.xml
Sim704 F2_8k.xml

rem copy created tapes
copy /Y F2_4k.tap ..\F2_4K
copy /Y F2_8K.tap ..\F2_8K

del /Q CC.cbn F2Diag.cbn fort2.cbn LibCTRL.cbn NYBL1.cbn Section4_8K.cbn
