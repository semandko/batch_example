@echo off


set fruits[0]=Apple
set fruits[1]=Apricot
set fruits[2]=Asparagus
set fruits[3]=Aubergine
set fruits[4]=Banana


FOR /L %%i IN (0 1 4) DO  (
   call echo Element At %%i = %%fruits[%%i]%%
)

pause