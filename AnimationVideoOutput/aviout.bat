@echo off
setlocal
cd c:\temp
set /p framerate=Enter framerate:
for /r %%a in (*.jpg) do (
    echo file '%%a' >> images.txt
)
c:\temp\ffmpeg.exe -r %framerate% -f concat -safe 0 -i images.txt -c:v libx264 -pix_fmt yuv420p video.mp4
:PROMPT
SET /P AREYOUSURE=Are you sure you want to delete the source jpegs (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END 
  del /q *.jpg
:END
del /q images.txt
endlocal