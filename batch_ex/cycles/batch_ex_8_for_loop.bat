@echo off 

echo %DATE%
echo %TIME%

echo -----------------------

:: example of for loop of list
echo example of for loop of list
set list=1 2 3 4 
(for %%a in (%list%) do ( 
   echo %%a 
))
echo -----------------------

:: example of for loop start, step, stop
echo example of for loop with start, step, stop
setlocal enabledelayedexpansion 
set topic[0]=comments 
set topic[1]=variables 
set topic[2]=Arrays 
set topic[3]=Decision making 
set topic[4]=Time and date 
set topic[5]=Operators 

for /l %%n in (0,1,5) do ( 
   echo !topic[%%n]! 
)
echo -----------------------

:: example of for loop array with func
echo example of for loop array with func
set Arr[0]=1 
set Arr[1]=2 
set Arr[2]=3 
set Arr[3]=4 
set x=0
 
:SymLoop 
if defined Arr[%x%] (
   call echo Array is %%Arr[%x%] = %x%
   set /a x+=1
   goto :SymLoop 
)
echo "The length of the array is" %x%
echo -----------------------

:: example of for loop structure
echo example of for loop of structure
set obj[0].Name=Joe 
set obj[0].ID=1 
set obj[1].Name=Mark 
set obj[1].ID=2 
set obj[2].Name=Mohan 
set obj[2].ID=3 
for /L %%i in (0 1 2) do  (
   call echo Name = %%obj[%%i].Name%%
   call echo Value = %%obj[%%i].ID%%
)

pause