@rem
@echo off

set persons[0].firstName=Bill
set persons[0].lastName=Gates

set persons[1].firstName=Steve
set persons[1].lastName=Jobs

set persons[2].firstName=Mark
set persons[2].lastName=Zuckerberg 

set persons[3].firstName=Sundar
set persons[3].lastName=Pichai


FOR /L %%i IN (0 1 3) DO  (
   call echo Person At %i% = %%persons[%i%].firstName%% %%persons[%i%].lastName%%
)

pause