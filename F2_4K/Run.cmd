@echo off
if "%~2"=="" (
CopyCards "%1" PunchedInp.cbn >nul
) else (
punch "%2" input.cbn  >nul
CopyCards "%1"+input.cbn PunchedInp.cbn  >nul
)
Sim704 Run.xml