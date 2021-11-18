
@rem Print all files in current directory recursive
 
@echo off

c:
cd c:\git_rep\GitHub\batch_ex

FOR /R "c:\git_rep\GitHub\batch_ex" %%f IN (*.*) DO (
	echo %%f
)

pause