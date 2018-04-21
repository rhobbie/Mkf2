@echo off
Punch "%1" SourceDeck.cbn >nul
Sim704 F2.xml
CleanDeck Punched.cbn "%~dpn1.cbn" 
del /Q *.drm