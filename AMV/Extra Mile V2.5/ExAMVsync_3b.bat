REM set border=64
REM set filterstring=fillborders=top=%border%:bottom=%border%:mode=fixed,scale=848:480:flags=bilinear,hflip
set filterstring=scale=1280:720:flags=bicubic
REM set filterstring=scale=848:480:flags=bilinear
set path="C:\Program Files\Internet\JDownloader2\tools\Windows\ffmpeg\x64\ffmpeg.exe"

REM set fps=[0:0]fps=23.976[inputt]

REM set filterstring=-vf scale=1280:720,fftdnoiz=sigma=1
REM set path=C:\Users\junh1024\Desktop\Apps\ffmpeg

set editing=[A][B][C][D][E][F][G][H][I][J][K][L][M]concat=n=13[out]

REM set A=[0:0]trim=start_frame=13024:end_frame=14256,setpts=PTS-STARTPTS[A]
REM set B=[1:0]trim=start_frame=93:end_frame=655,setpts=PTS-STARTPTS[B]
REM set C=[2:0]trim=start_frame=23540:end_frame=23951,setpts=PTS-STARTPTS[C]
REM set D=[3:0]trim=start_frame=7320:end_frame=7707,setpts=PTS-STARTPTS[D]
REM set E=[4:0]trim=start_frame=26872:end_frame=27351,setpts=PTS-STARTPTS[E]
REM set F=[5:0]trim=start_frame=29173:end_frame=29506,setpts=PTS-STARTPTS[F]
REM set G=[6:0]trim=start_frame=29807:end_frame=30118,setpts=PTS-STARTPTS[G]
REM set H=[7:0]trim=start_frame=7600:end_frame=8247,setpts=PTS-STARTPTS[H]
REM set I=[8:0]trim=start_frame=207:end_frame=979,setpts=PTS-STARTPTS[I]
REM set J=[9:0]trim=start_frame=957:end_frame=1010,setpts=PTS-STARTPTS[J]
REM set K=[10:0]trim=start_frame=29963:end_frame=30486,setpts=PTS-STARTPTS[K]
REM set L=[11:0]trim=start_frame=30602:end_frame=30709,setpts=PTS-STARTPTS[L]
REM set M=[12:0]trim=start_frame=0:end_frame=23,setpts=PTS-STARTPTS[M]

set A=[0:0]null[A]
set B=[1:0]null[B]
set C=[2:0]null[C]
set D=[3:0]null[D]
set E=[4:0]null[E]
set F=[5:0]null[F]
set G=[6:0]null[G]
set H=[7:0]null[H]
set I=[8:0]null[I]
set J=[9:0]null[J]
set K=[10:0]null[K]
set L=[11:0]null[L]
set M=[12:0]null[M]

set fl03="[Tsundere] Kantai Collection - 03 [BDRip h264 1920x1080 10bit FLAC][75B3A478]M.mkv"
set fl10="[Tsundere] Kantai Collection - 10 [BDRip h264 1920x1080 10bit FLAC][B207187D].mkv"
set fl12="[Tsundere] Kantai Collection - 12 [BDRip h264 1920x1080 10bit FLAC][80020949].mkv"
set fl12h="[HorribleSubs] Kantai Collection - 12 [1080p]m-001.mkv"
REM set inputt=-i %fl03%  -i %fl10%  -i %fl12%  -i %fl12%  -i %fl12%  -i %fl12%  -i %fl12%  -i %fl12%  -i %fl12%  -i %fl12%  -i %fl12%  -i %fl12%  -i %fl12h% 
set inputt=^
-ss 00:09:3.08420846978322     -t               00:00:48.6319166788854    -i %fl03%     ^
-ss 00:00:3.83716666763075     -t               00:00:28.0697083403858    -i  %fl10%     ^
-ss 00:16:23.5659169137876    -t                00:00:15.3903750038668   -i %fl10%     ^
-ss 00:05:5.26329174336405     -t               00:00:16.1828333373993    -i %fl03%     ^
-ss 00:18:40.7446252815871  -t                  00:00:20.02000000503   -i %fl10%     ^
-ss 00:20:16.7155003056998    -t                00:00:13.9305833368334    -i %fl10%     ^
-ss 00:20:43.158583645677    -t                00:00:13.0130000032695    -i %fl10%     ^
-ss 00:05:16.9416250796316    -t                00:00:27.0270000067905    -i %fl12%     ^
-ss 00:00:8.59191666882539   -t                 00:00:32.2405416747671   -i %fl12%      ^
-ss 00:00:39.9148750100286    -t                00:00:2.25225000056588     -i %fl12h%  ^
-ss 00:20:49.6650836473116    -t                00:00:21.8551666721578   -i %fl12%  ^
-ss 00:21:16.3167086540079    -t                00:00:4.50450000113176     -i %fl12%  ^
-ss 00:00:0 			       -t                    00:00:1.0010000002515    -i %fl12%  

REM -1 frame from PPro EDL except for 12h

%path% -y %inputt% -filter_complex "%A%;%B%;%C%;%D%;%E%;%F%;%G%;%H%;%I%;%J%;%K%;%L%;%M%;%editing%;[out]%filterstring%" -sn -an  -pix_fmt yuv420p   -crf 16.6 -threads 1 -tune animation "Extramile_V3a_720p.mkv"
 REM -qscale:v 5

REM using =TEXT(((B39/LEFT($A$39, LEN($A$39)-4))-MOD(B39/LEFT($A$39, LEN($A$39)-4),60))/86400,"hh:mm:")&MOD(B39/LEFT($A$39, LEN($A$39)-4),60) where A39 is =24000/1001 & B39 is the frame no.
 
popd
pause
 

