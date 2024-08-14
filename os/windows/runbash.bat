rem https://dev.to/ddebajyati/i-wrote-a-batch-script-to-enhance-my-workflow-on-command-prompt-2476 

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
