
@rem parcer of text file

@rem delims - separator of elements of string (space in general here we use <,>)
@rem skip   - number of first lines to be passed (0 in general)
@rem tokens - each string is divided on words that means the position of words to be utilized (1 in general)
@rem eol    - symbol of End of Line that is placed in the begining of the lines (; in general)

@echo off 

FOR /F "delims=, skip=3 eol=; tokens=1,2,4" %%i IN ( persons.txt ) DO  (
   echo -------------------------------------	
   echo Full Name: %%i %%j   Gender: %%k
)
pause