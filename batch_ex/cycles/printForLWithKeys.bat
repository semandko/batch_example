
@rem print number in series

@echo off

c:
cd c:\git_rep\GitHub\batch_ex

@echo print number in series
@echo first  is start
@echo second is step
@echo third  is stop

FOR /L %%d IN (%1 %2 %3) DO (
	echo %%d
)

pause