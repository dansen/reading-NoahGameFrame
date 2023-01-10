@echo off

set RootDir=%cd%
echo %RootDir%

where /q devenv.com
IF ERRORLEVEL 1 (
    call "C:\Program Files\Microsoft Visual Studio\2022\Professional\VC\Auxiliary\Build\vcvarsall.bat" x86_amd64
) ELSE (
    ECHO Application exists. Let's go!
)

SET CMD=%~1

IF "%CMD%" == "" (
    cd /d "%RootDir%"
    devenv.com NoahFrame.sln /build Debug
) ELSE (
    cd /d "%RootDir%"
    devenv.com NoahFrame.sln /build Debug
)
