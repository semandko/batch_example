
@echo off

Rem if statements procedure

set VAR=before
echo %VAR%

if "%VAR%" == "before" (
	set VAR=after
	echo %VAR%
)

if "%VAR%" == "after" echo If you see this, it worked

echo %VAR%

pause