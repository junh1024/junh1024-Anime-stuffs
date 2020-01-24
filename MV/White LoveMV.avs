setmemorymax(800)

dgdecode_mpeg2source("White LoveMV.d2v")
crop2(6,0,-6,0)
lanczosresize(656,480)
# trim(0, framecount()-4)
# requestlinear(50,12,12)
# qt=qtgmc("fast",fpsdivisor=2,EdiThreads=2,rep0=0,SourceMatch=2, TR2=2,Sharpness=0.5)
# fielddeinterlace
qtgmc("medium",fpsdivisor=2,edithreads=2,Sharpness=0.5)
crop2(0,2,0,0)
# tfm
# tfm(clip2=qt,pp=6,cthresh=5)
# tfm(clip2=qt,pp=6)
# vinverse()


# deblock_qed(aOff1 =8,aOff2=8)

smoothtweak(contrast=1.6,saturation=1.2)

coloryuv(off_u=5,off_v=-5)

# hqdn3d(1)
# FFT3DFilter(sigma=2,bw=128,bh=128,ow=32,oh=32)

MT("""
super = MSuper(pel=2, sharp=1)
backward_vec2 = super.MAnalyse(isb = true, delta = 2, overlap=4) 
backward_vec1 = super.MAnalyse(isb = true, delta = 1, overlap=4)
forward_vec1 = super.MAnalyse(isb = false, delta = 1, overlap=4)
forward_vec2 = super.MAnalyse(isb = false, delta = 2, overlap=4)
MDegrain2(super, backward_vec1,forward_vec1,backward_vec2,forward_vec2,thSAD=270)
""",2,overlap=8)


# al=autolevels()

# MT_average(MergeLuma (autolevels))
# histogram(mode="levels")
limiter()
