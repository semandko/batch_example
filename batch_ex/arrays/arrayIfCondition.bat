@echo off


set Arr[0]=1000
set Arr[1]=5000
set Arr[2]=3000


if not defined Arr[5] (
   echo Element at 5 does not exists!
)

if defined Arr[1] (
   echo Element at 1 exists!
)
pause