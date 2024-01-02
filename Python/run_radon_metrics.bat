@echo off
setlocal enabledelayedexpansion

REM Set the range of index numbers (0 to 125)
for /l %%i in (0, 1, 125) do (
    set index=%%i
    set file=generated_code_!index!.py

    REM Run Radon commands for each file
    echo Calculating Cyclomatic Complexity for !file!
    radon cc !file! -a

    echo Calculating Maintainability Index for !file!
    radon mi !file! -s

    echo Calculating Raw Metrics for !file!
    radon raw !file!

    echo Calculating Halstead Metrics for !file!
    radon hal !file!
)

REM Pause to keep the console window open
pause
