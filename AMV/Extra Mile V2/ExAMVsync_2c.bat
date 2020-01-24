REM set border=64
REM set filterstring=fillborders=top=%border%:bottom=%border%:mode=fixed,scale=848:480:flags=bilinear,hflip
set filterstring=scale=1280:720:flags=bicubic
REM set filterstring=scale=848:480:flags=bicubic

REM set fps=[0:0]fps=23.976[inputt]

REM set filterstring=-vf scale=1280:720,fftdnoiz=sigma=1
REM set path=C:\Users\junh1024\Desktop\Apps\ffmpeg
set path="C:\Program Files\Internet\JDownloader2\tools\Windows\ffmpeg\x64\ffmpeg.exe"


set editing=[A][B][C][D][E][F][G][H][I][J][K]concat=n=11[out]

set A=[0:0] fps=23.976 [A]
set B=[1:0] fps=23.976 [B]
set C=[2:0] fps=23.976 [C]
set D=[3:0] fps=23.976 [D]
set E=[4:0] fps=23.976 [E]
set F=[5:0] fps=23.976 [F]
set G=[6:0] fps=23.976 [G]
set H=[7:0] fps=23.976 [H]
set I=[8:0] fps=23.976 [I]
set J=[9:0] fps=23.976 [J]
set K=[10:0] fps=23.976 [K]

set 

REM %path%\ffmpeg -i "ncop1a_V.mkv" -filter_complex "%A%;%B%;%C%;%D%;%E%;%F%;%G%;%H%;%I%;%editing%;[out]%filterstring%,%fps%" -y  -pix_fmt yuv420p10le  -strict -1 -f yuv4mpegpipe - | %path%\x265-10b-23 -F 1   --csv  x265logs.csv   --colorprim bt709 --transfer  bt709 --colormatrix  bt709 --preset slow    --crf 18  --y4m --sar 1   --input - -o "%~p1 F.mkv"



set fl03="[Tsundere] Kantai Collection - 03 [BDRip h264 1920x1080 10bit FLAC][75B3A478]M.mkv"
set fl10="[Tsundere] Kantai Collection - 10 [BDRip h264 1920x1080 10bit FLAC][B207187D].mkv"
set fl12="[Tsundere] Kantai Collection - 12 [BDRip h264 1920x1080 10bit FLAC][80020949].mkv"
set fl12h="[HorribleSubs] Kantai Collection - 12 [1080p]m-001.mkv"
set inputt=^
-ss 543.2098765  -t 92.0503837 -i %fl03%     ^
-ss 305.3053053  -t 16.1411411 -i %fl03%     ^
-ss 1120.787454  -t 19.9783116 -i %fl10%     ^
-ss 1216.758425  -t 13.8888888 -i %fl10%     ^
-ss 1243.201535  -t 12.9713046 -i %fl10%     ^
-ss 316.9836503  -t 26.9853186 -i %fl12%     ^
-ss 8.633633634  -t 32.1988655 -i %fl12%     ^
-ss 39.91491491  -t 2.21054387 -i %fl12h%     ^
-ss 1249.708041  -t 21.8134801 -i %fl12%      ^
-ss 1276.359693  -t 4.379379379 -i %fl12%  ^
-ss 0.000000000  -t 0.8         -i %fl12%  

%path% -y %inputt% -filter_complex "%A%;%B%;%C%;%D%;%E%;%F%;%G%;%H%;%I%;%J%;%K%;%editing%;[out]%filterstring%" -sn -an  -pix_fmt yuv420p   -crf 16 -threads 3 "Extramile_V2b_720p.mkv"
 REM -qscale:v 5


 
popd
pause
 