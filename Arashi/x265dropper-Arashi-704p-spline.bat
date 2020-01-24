set filterstring=-vf crop=1916:1036,scale=1312:704:flags=bicubic,hqdn3d=2,unsharp=luma_amount=0.75,limiter=8:232
REM set filterstring= 
set preset=slow
REM set preset=faster

REM set time=-ss 210 -t 90

REM set filterstring=-vf scale=1280:720,fftdnoiz=sigma=1
pushd "C:\Users\junh1024\Desktop\Apps\ffmpeg"
REM ffplay.exe %filterstring% "%~f1"
REM ffmpeg -i "%~f1" %filterstring% -t 0.1 "%~n1_out.png" 
REM FOR %%s IN (a) DO (

ffmpeg -loglevel error  -i "%~f1" %filterstring% -pix_fmt yuv420p10le -strict -1 -f yuv4mpegpipe - | x265-10b-23 -F 1 --csv x265logs.csv --colorprim bt709 --transfer bt709 --colormatrix bt709 --preset %preset% --crf 19 --y4m --sar 1 --input - -o "%~f1-704p-2.hevc"
REM )
REM ffmpeg -i "%~f1.hevc" -c copy "%~f1.mkv"
popd
REM pause
REM ffmpeg -i test.hevc -vcodec copy test.mkv
REM ffmpeg -y -i test.mkv test.png
REM pause
 REM -color_primaries 1 -color_trc 1 -colorspace 1 
 REM --color_primaries bt709 -color_trc bt709 -colorspace bt709 
