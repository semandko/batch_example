::===============================================================
:: The below example is used to find computer and logged on users
::
::===============================================================

@echo OFF 

:: Windows version check 
IF NOT "%OS%"=="Windows_NT" GOTO Syntax 
echo.%* | FIND "?" >NUL 

:: Command line parameter check 
IF NOT ERRORLEVEL 1 GOTO Syntax
IF NOT [%2]==[] GOTO Syntax 

:: Keep variable local 
SETLOCAL 
:: Initialize variable 
SET WSS= 
:: Parse command line parameter 
IF NOT [%1]==[] FOR /F "tokens = 1 delims = \ " %%A IN ('echo.%~1') DO SET WSS = %%A 
:: Use NET VIEW and NBTSTAT to find computers and logged on users 
FOR /F "tokens = 1 delims = \ " %%a IN ('NET VIEW ^| FIND /I "\\%WSS%"') DO FOR /F 
"tokens = 1 delims = " %%A IN ('NBTSTAT -a %%a ^| FIND /I /V "%%a" ^| FIND 
"<03>"') DO echo.%%a %%A 
:: Done 
ENDLOCAL
GOTO:EOF
 
:Syntax 
echo Display logged on users and their workstations. 
echo Usage: ACTUSR [ filter ] 
IF "%OS%"=="Windows_NT" echo Where: filter is the first part of the 
computer name^(s^) to be displayed