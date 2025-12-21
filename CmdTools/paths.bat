@echo off
set "CHECK_DIR=%~dp0"
set "PATH_CHECK=;%PATH%;"
set "CHECK_DIR=;%CHECK_DIR%;"

echo %PATH_CHECK% | findstr /I /C:"%CHECK_DIR%" >nul
if %errorlevel%==0 (
    echo Already in PATH.
) else (
    set "PATH=%~dp0;%PATH%"
    echo Added to PATH for this session.
)
