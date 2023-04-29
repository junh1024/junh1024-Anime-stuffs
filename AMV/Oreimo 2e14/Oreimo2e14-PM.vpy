from vapoursynth import core
import sys
sys.path.append( r'D:\VapourSynth64Portable\Scripts')
from havsfunc import *

#core.std.SetMaxCPU("avx2")
#core.num_threads=1

clip=core.ffms2.Source(r"ore14-1080p_V.h264", seekmode=1)
clip=core.std.AssumeFPS(clip, fpsnum=25, fpsden=1)

clip = core.fmtc.resample(clip,w=1280, h=720,invks=True,kernel="bilinear")
#clip = core.fmtc.bitdepth (clip,dmode=1,bits=10)
 
#clip=core.neo_fft3d.FFT3D(clip, sigma=0.5, bt=3,opt=3,planes=[0])  
#clip=core.f3kdb.Deband(clip, grainy=24, grainc=24)
black=core.std.BlankClip(clip)

clip=clip[0:3150]+black[0:75]
clip=core.std.Limiter(clip,16*256,235*256,planes=[0, 1, 2])


clip.set_output()
