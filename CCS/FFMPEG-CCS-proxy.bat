REM set deshake=edge=2:blocksize=16,

set filterstring=scale=960:720:flags=bilinear,hqdn3d=3
REM set filterstring=scale=160:120
set fps=fps=24000/1001

REM set filterstring=-vf scale=1280:720,fftdnoiz=sigma=1
set path=C:\Users\junh1024\Desktop\Apps\ffmpeg

REM ffmpeg -i "%~f1" %filterstring%  -y  -an  "%~f1-proxy.mkv"

set OPend=1915
set EDstart=32008
set EDlength=1668
set /A EDend= %EDstart% + %EDlength%

set editing=[NCOP][main][NCED][NEP]concat=n=4[out]

REM setpts=PTS-STARTPTS is needed cuz FFMPEG doesn't trim time when you trim video

set NCOP=[0:0]trim=end_frame=%OPend%,%fps%[NCOP]
set main=[1:0]trim=start_frame=%OPend%:end_frame=%EDstart%,%fps%,setpts=PTS-STARTPTS[main]
set NCED=[2:0]trim=end_frame=%EDlength%,%fps%[NCED]
set NEP=[1:0]trim=start_frame=%EDend%,%fps%,setpts=PTS-STARTPTS[NEP]


REM set NCED=[2:0]trim=start_pts=4,%fps%[NCED]

REM set editing=[NCED]copy[out]


REM %NCOP%;%main%;%NCED%;%NEP%;

%path%\ffmpeg -i "ncop1a_V.mkv" -an -i "%~f1"  -an  -i "nced1_V.mkv"  -an  -filter_complex "%NCOP%;%main%;%NCED%;%NEP%;%editing%;[out]%filterstring%,%fps%" -y  -pix_fmt yuv420p10le  -strict -1 -f yuv4mpegpipe - | %path%\x265-10b-23 -F 1   --csv  x265logs.csv   --colorprim bt709 --transfer  bt709 --colormatrix  bt709 --preset slow    --crf 18  --y4m --sar 1   --input - -o "%~p1 CCX V3 V RC1.mkv"
   REM "%~f1-sync2.mkv"

REM %path%\ffmpeg -i "ncop1a_V.mkv" -an -i "%~f1"  -an  -i "nced1_V.mkv"  -an  -filter_complex "%NCOP%;%main%;%NCED%;%NEP%; [NCOP][main]blend[NCOPmain]; [NCOPmain][NCED]concat[NCOPmainNCED]; [NCOPmainNCED][NEP]blend[out]; [out]%filterstring%,%fps%" -y     "%~f1-sync2.mkv"


 REM 

REM [out]%filterstring%,%fps%"   -y  "%~f1-sync2.mkv"


 REM -pix_fmt yuv420p10le  -strict -1 -f yuv4mpegpipe - | %path%\x265-10b-23 -F 1   --csv  x265logs.csv   --colorprim bt709 --transfer  bt709 --colormatrix  bt709 --preset ultrafast   --crf 23  --y4m --sar 1   --input - -o "%~p1 CCX V3 V RC1.mkv"


 
popd
pause
 