WriteTape "%1" MT3.tap
Sim704 UASAP.xml
CleanDeck Punched.cbn "%~dpn1.cbn"
ShowTape MT2.tap >"%~dpn1.lst"
del MT2.tap MT3.tap MT6.tap MT10.tap Punched.cbn
