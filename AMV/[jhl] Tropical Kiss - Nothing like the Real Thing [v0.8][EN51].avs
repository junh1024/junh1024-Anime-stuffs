setmemorymax(700)
x=960
y=540
f=23.976023976023976023976023976024

a=ffvideosource("[NEET-Raws] Tropical Kiss Vol. 1 (BD 1920x1080 x264 FLACx2).mkv").bilinearresize(x,y).assumefps(f)

# a= a

# c=ffvideosource("[SubDESU-H] Tropical Kiss - 03 (852x480 x264 8bit AAC) [9CF1A26A].mp4")
c=ffvideosource("TK3.mkv",fpsnum=24000,fpsden=1001,threads=2)
c=c.bicubicresize(x,y).assumefps(f)
# c=c.info
c=c.MT("""awarpsharp2(25)""",2,overlap=16).fastlinedarken(25)

C=requestlinear(C,50,15,15)
audio=wavsource("Marvin Gaye\Aint Nothing\AintNothing71dPCM.wav")

offset=0
edit1=2
edit2=25
blankclip(a).trim(0       ,    3     -1)++ \ 
a.trim(961     ,    976   -1)++ \ 
a.trim(1033    ,    1049  -1)++ \ 
a.trim(1141    ,    1156  -1)++ \ 
a.trim(397     ,    493   -edit1)++ \ 
c.trim(4869    ,    4967  )++ \ 
c.trim(5113    ,    5562  -1)++ \ 
c.trim(41977      , 42104          -1).reverse ++ \ 
c.trim(14861   ,    15046 -1)++ \ 
a.trim(5751    ,    5876  -1)++ \ 
a.trim(5876    ,    5968  -1)++ \ 
c.trim(16598   ,    16619 -1)++ \ 
a.trim(5968    ,    6009  -1)++ \ 
c.trim(10085   ,    10338 -1)++ \ 
c.trim(17025   ,    17257 -1)++ \ 
c.trim(17329   ,    17479 -1)++ \ 
c.trim(17659   ,    17822 -1) ++ \ 
c.trim(17599   ,    17659 -1)++ \ 
blankclip(a).trim(0       ,    42    -1 -edit2)++ \ 
c.trim(7060 -edit2   ,    7217  -1)++ \ 
c.trim(7330    ,    7468  -1)++ \ 
c.trim(37258   ,    37382 -1)++ \ 
c.trim(37568   ,    37689 -1)++ \ 
c.trim(37701   ,    37822 -1)++ \ 
c.trim(38612   ,    38719 -1)++ \ 
c.trim(42297   ,    42403 -1)
# a
audiodub(last,audio).AmplifyDB( -12)
fluxsmoothst(7,7)
# requestlinear(100,5,5)

# vmtoon(150)