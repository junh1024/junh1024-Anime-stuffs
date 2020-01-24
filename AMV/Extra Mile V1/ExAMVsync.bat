REM set border=64
REM set filterstring=fillborders=top=%border%:bottom=%border%:mode=fixed,scale=848:480:flags=bilinear,hflip
set filterstring=scale=1280:720:flags=bicubic

REM set fps=[0:0]fps=23.976[inputt]

REM set filterstring=-vf scale=1280:720,fftdnoiz=sigma=1
set path=C:\Users\junh1024\Desktop\Apps\ffmpeg


set editing=[A][B][C][D][E][F][G][H][I]concat=n=9[out]

set A=[0:0] fps=23.976 [A]
set B=[1:0] fps=23.976 [B]
set C=[2:0] fps=23.976 [C]
set D=[3:0] fps=23.976 [D]
set E=[4:0] fps=23.976 [E]
set F=[5:0] fps=23.976 [F]
set G=[6:0] fps=23.976 [G]
set H=[7:0] fps=23.976 [H]
set I=[8:0] fps=23.976 [I]



set fl="[Tsundere] Kantai Collection - 03 [BDRip h264 1920x1080 10bit FLAC][75B3A478]M.mkv"
set inputt=^
-ss 543.155555  -t 92.0666666 -i %fl%     ^
-ss 305.180180  -t 16.0994327 -i %fl%     ^
-ss 748.790457  -t 4.50450450 -i %fl%     ^
-ss 871.329663  -t 1.75175175 -i %fl%     ^
-ss 1195.88888  -t 3.54521187 -i %fl%     ^
-ss 1204.13333  -t 51.7183850 -i %fl%     ^
-ss 1258.14444  -t 23.5652319 -i %fl%     ^
-ss 1304.31111  -t 21.6466466 -i %fl%     ^
-ss 1326.65999  -t 33.0747414 -i %fl% 

%path% -y %inputt% -filter_complex "%A%;%B%;%C%;%D%;%E%;%F%;%G%;%H%;%I%;%editing%;[out]%filterstring%" -sn -an  -pix_fmt yuv420p -preset slow -crf 17.5  "Extramile_720p.mkv"
REM -qscale:v 5 "Extramile_synctest.avi"

REM %path%\ffmpeg.exe %inputt% -filter_complex "%A%;%B%;%C%;%D%;%E%;%F%;%G%;%H%;%I%;%editing%"   -y  -pix_fmt yuv420p10le  -strict -1 -f yuv4mpegpipe - | %path%\x265-10b-23 -F 1   --csv  x265logs.csv   --colorprim bt709 --transfer  bt709 --colormatrix  bt709 --preset slow    --crf 18  --y4m --sar 1   --input - -o "ExAMV 1080p F.mkv"
 
popd
pause
 