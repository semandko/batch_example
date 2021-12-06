@echo off 

Rem example of use numeric set /A expression
Rem 						set /P variable=[promtString] 
Rem                         promtString is %0,1...

SET /A a = 5 
SET /A b = 10 
SET /A c = %a% + %b% 
echo %c% 
SET /A c = %a% - %b% 
echo %c% 
SET /A c = %b% / %a% 
echo %c% 
SET /A c = %b% * %a% 
echo %c%
pause