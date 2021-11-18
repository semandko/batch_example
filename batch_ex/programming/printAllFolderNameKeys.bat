
@rem Print all folders in current directory recursive with keys
@rem call parameters
 
@echo off

echo Print all folders in current directory recursive with keys

c:
cd c:\git_rep\GitHub\batch_ex

FOR /D /r %%d IN (%1* %2*) DO (
	echo %%d
)

pause