
REM ******************************************
@echo off
color B
mode con: cols=51 lines=18

goto LOGIN


:LOGIN
set/p uname= < "sarthak"
set/p pass=< "admin"
title Login
cls
echo -------------------------------------------------
echo                       Login
echo -------------------------------------------------
echo.
echo.
set/p "unamel=_               Username : "
set/p "passwordl=_               Password : "
echo.
IF "%unamel%"=="" goto LOGINERROR
IF "%passwordl"=="" goto LOGINERROR
IF NOT %unamel%==%uname% goto LOGINERROR
IF NOT %passwordl%==%pass% goto LOGINERROR
goto LOADING

:LOGINERROR
echo -------------------------------------------------
echo                     Error
echo -------------------------------------------------
echo Invalid Username or password
pause
goto LOGIN


:LOADING
title Loading...
set load=%load%!!!!!!!
cls
echo -------------------------------------------------
echo                       Login
echo -------------------------------------------------
echo.
echo.
echo                 Username : %unamel%
echo                 Password : %passwordl%
echo.
echo.
echo          Logging in...
echo          ===================================
echo          %load%
echo          ===================================
echo.                              Please Wait...
echo.
ping localhost -n 2 >nul
set/a loadnum=%loadnum% +1
if %loadnum%==5 goto DONE
goto LOADING

:DONE
title Done
cls
echo -------------------------------------------------
echo              Fresco Cheat Application
echo -------------------------------------------------
echo.
echo Installing Dependencies....
pip install pyautogui
python fresco_cheat.py
pause


