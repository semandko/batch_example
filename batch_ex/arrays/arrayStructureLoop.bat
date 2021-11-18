@echo off

set len=3

set obj[0].name=Joe
set obj[0].id=1
set obj[1].name=Mark
set obj[1].id=2
set obj[2].name=mohan
set obj[2].id=3

set i=0

:loop

if %i% equ %len% goto :eof

for /f "delims==. tokens=1-3" %%j in ('set obj[%i%]') do (
    set cur.%%k=%%l 
)

echo name=%cur.name% value=%cur.id%

set /a i=%i%+1

goto loop
