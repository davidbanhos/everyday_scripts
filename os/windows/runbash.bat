@echo off
setlocal enabledelayedexpansion
set CMDLINE=
:loop
if "%~1"=="" goto end
set CMDLINE=!CMDLINE! %~1
shift
goto loop
:end
bash -ic "!CMDLINE!"
