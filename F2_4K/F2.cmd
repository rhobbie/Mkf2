@echo off
if exist SourceDeck.cbn del /q SourceDeck.cbn Punched.cbn LP.txt "%~dpn1.cbn" >nul
Punch "%1" SourceDeck.cbn >nul
Sim704 F2.xml
if exist Punched.cbn CleanDeck Punched.cbn "%~dpn1.cbn" >nul
del /Q *.drm
