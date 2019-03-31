rem run UASAP for source files

cd ..\UASAP

call UASAP ..\MKFORT2\fort2.sap
call UASAP ..\MKFORT2\CC.sap
call UASAP ..\MKFORT2\F2Diag.sap
call UASAP ..\MKFORT2\LibCTRL.sap
call UASAP ..\MKFORT2\NYBL1.sap
call UASAP ..\MKFORT2\IMT.sap

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
del /Q fort2\DC*

rem create carddecks for fortran records on mastertape and 4k and 8k systemtape 
CopyCards NYBL1.cbn fort2\NYBL1.cbn
call FM.cmd
call F4k.cmd
call F8k.cmd

rem delete files
del /Q fort2\NR*
del /Q fort2\DR*
del /Q fort2\MR*
del /Q fort2\EDT*
del /Q fort2\REC*
del /Q fort2\END*

rem create library
SapSplit LibCTRL.lst LibCTRL.cbn fort2\
Call Lib_copy.cmd
del /Q  fort2\Line*

rem create diag
Call Diag_copy.cmd

cd fort2
rem copy bss loader
CopyCards Page960Line6_F.cbn+Page960Line31_F.cbn ..\BSSLDR.cbn

rem copy tape copy & verify program
CopyCards NYBL1.cbn+Page955Line3_AT.cbn ..\F2TCVP.cbn
cd ..

del /Q fort2\Page*

rem create card decks for mastertape and 4k, 8k systemtape
cd fort2
CopyCards FM.cbn+LIB_M.cbn+DIA.cbn ..\F2_M.cbn
CopyCards F4k.cbn+LIB.cbn+DIA_S.cbn ..\F2_4k.cbn
CopyCards F8k.cbn+LIB.cbn+DIA_S.cbn ..\F2_8k.cbn
del /Q *
cd ..
rmdir fort2
del /Q *.lst

rem create initial master tape
CopyCards NYBL1.cbn+IMT.cbn MKIMT.cbn
Sim704 MKIMT.xml

rem create the fortran ii master mape
Sim704 F2_M.xml

rem create 4k and 8k system tape from the master tape and the editor decks
Sim704 F2_4k.xml
Sim704 F2_8k.xml

rem copy created system tapes
copy /Y F2_4k.tap ..\F2_4K
copy /Y F2_8K.tap ..\F2_8K

rem delete files
del /Q CC.cbn F2Diag.cbn fort2.cbn LibCTRL.cbn NYBL1.cbn IMT.cbn MKIMT.cbn  F2_M.cbn MT5.tap F2_4k.tap  F2_8k.tap
