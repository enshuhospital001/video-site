@echo off
mkdir thumbs 2>nul

for %%f in (*.mp4) do (
    echo Generating thumbnail for %%f...
    ffmpeg -i "%%f" -ss 3 -vframes 1 "thumbs/%%~nf.jpg"
)

echo Done!
pause