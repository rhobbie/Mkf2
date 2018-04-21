@if not exist adc00038 (
@echo download SHARE Tape 2 "adc00038" from http://www.piercefuller.com/library/kyu2.html
@pause
@exit 
)

rem create UASAP tape and loader from share tape

rem extract UASAP binary record from share tape
mkdir adc_38
TapeExtract adc00038 adc_38\ >nul
CleanDeck adc_38\UA_SAP_0347.BI UA_SAP_0347.BI 
del /Q adc_38\*.*
rmdir adc_38

rem split UA_SAP Binary deck

rem remove drum loader and drum control card
SplitDeck UA_SAP_0347.BI 2 tmp1.BI tmp2.BI

rem extract tape loader
SplitDeck tmp2.BI 1 UASAP3RT.cbn tmp1.BI

rem extract tape control card
SplitDeck tmp1.BI 1 UASAP3WT.cbn tmp2.BI

rem remove SAP SEARCH 
SplitDeck tmp2.BI 1 tmp1.BI tmp3.BI

rem split UASAP3 from 4-7
SplitDeck tmp3.BI 17 UASAP3.cbn UASAP4_7.cbn

rem delete unused files
del *.BI

rem patch control cards for tape 1
PatchCard 8RD=221 UASAP3RT.cbn
PatchCard 9LA=221 UASAP3WT.cbn

rem create deck to load to tape
CopyCards UASAP3.cbn+UASAP3WT.cbn+UASAP4_7.cbn UATAPELD.cbn

rem load to tape
Sim704 UATAPELD.xml

rem copy created files
copy /Y UASAP.tap ..\UASAP
copy /Y UASAP3RT.cbn ..\UASAP

rem delete files
del UASAP3WT.cbn UASAP3.cbn UASAP4_7.cbn UATAPELD.cbn UASAP.tap UASAP3RT.cbn

