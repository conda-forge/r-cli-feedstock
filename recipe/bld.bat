%PREFIX%\lib\R\bin\x64\R.exe CMD INSTALL --build . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit /B 1
