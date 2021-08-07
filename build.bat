@ECHO OFF
CLS
ECHO.
ECHO #########################################################
ECHO # Build Vivado project for MicroPhase Lite
ECHO # Part: XC7Z010CLG400-1
ECHO # Author: abigsam@gmail.com
ECHO # Vivado version: 2020.1
ECHO #########################################################
ECHO.
ECHO Avaliable options:
ECHO 1. Build project
ECHO 2. Cleanup Git repository
ECHO 3. Exit
ECHO.

CHOICE /C 123 /N /M "Enter your choice:"
IF ERRORLEVEL 3 GOTO END
IF ERRORLEVEL 2 GOTO RUN_CLEANUP
IF ERRORLEVEL 1 GOTO RUN_BUILD

:RUN_CLEANUP
ECHO Cleanup Git repository...
del "%~dp0\*.jou"
del "%~dp0\*.log"
del "%~dp0\*.dmp"
@REM rmdir /s /q "%~dp0\vivado"
rmdir /s /q "%~dp0\.Xil"
goto END

:RUN_BUILD
ECHO Run Tcl build script...
C:\Xilinx\Vivado\2020.1\bin\vivado.bat -mode batch -source "%~dp0\scripts\build.tcl" -tclargs 0
goto END

:END
rem pause
