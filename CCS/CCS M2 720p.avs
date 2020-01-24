setmemorymax(800)
w=1288
h=728

m=3
n=4

dss2("[QTS] Cardcaptor Sakura The Movie 2 Enchanted Cards (BD H26.mkv")

spl=spline36resize(w,h)
# dither_convert_8_to_16().Dither_resize16(w,h,invks =true ,kernel="bicubic").DitherPost().repair(spl)
spl

# awarpsharp2(30)
# vmtoon(thinning=0,xstren=0,strength=30) #xstren is the sharpening amouint, strength is the linedarkening amount)

temp = last.TemporalSoften(7,255,255,25,2)
Interleave(temp.Repair(last.TemporalSoften(1,255,255,25,2)),last)
DePan(last,blur=20,data=DePanEstimate(last,trust=0,dxmax=m,dymax=m,zoommax=1.2),offset=-1)
SelectEvery(2,0)

crop2(n,n,-n,-n)

SRemoveDirtMC(6)

coloryuv(off_u=+3,off_v=-3,off_y=3)

# unfilter(40,40)

# tweak(sat=5)
limiter()
# histogram(mode="levels")