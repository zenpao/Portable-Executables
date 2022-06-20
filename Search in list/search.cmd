@echo off
setlocal EnableDelayedExpansion

rem Read file names from file list and assemble a long string with this format:
rem "filename1.ext*" "filename2.ext*" ...
set "fileList="
for /F "delims=" %%a in (%filedir%list.txt) do set fileList=!fileList! "%%a*"

rem Search the files from current directory downwards
(for /R %%a in (%fileList%) do echo %%a) > %filedir%results.txt