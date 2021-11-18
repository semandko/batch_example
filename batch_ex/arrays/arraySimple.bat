
@rem 

@echo off

c:
cd c:\git_rep\GitHub\batch_ex


set myarray[0]=Abc
set /A myarray[1]=234
set myarray[2]=Def

echo myarray[0]= %myarray[0]%
echo myarray[1]= %myarray[1]%
echo myarray[2]= %myarray[2]%

set myarray[0]=A new value

echo myarray[0]= %myarray[0]%

pause