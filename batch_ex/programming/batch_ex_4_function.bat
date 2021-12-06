@echo off

REM ***********************************
REM *** Main

call :Func "1st arg" "2nd arg"

pause
goto :EOF

REM ***********************************
REM *** Function Definitions

:Func
echo params: "%~0" "%~1" "%~2"
echo calling file: "%~nx0"
echo full: "%~dpnx0%0"
goto :EOF
REM *** End :Func