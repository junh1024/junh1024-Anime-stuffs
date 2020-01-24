dss2("SoniAni NCED6.mkv")
# w=WavSource("..\ThrillerRemixShort2.wav")
# audiodub (last,w)

v=trim(0,137        )  ++ \
trim(495,687      )  ++ \
trim(691,759      )  ++ \
trim(760,797      )  ++ \
trim(468,494      )  ++ \
trim(849,920      )  ++ \
trim(969,1014     )  ++ \
trim(1037,1175    )  ++ \
trim(1224,1259    )  ++ \
trim(1202,1219    )  ++ \
trim(1775,1904    )  ++ \
trim(1435,1474    )  ++ \
trim(1176,1199    )  ++ \
trim(1383,1434    )  ++ \
trim(1260,1310    )  ++ \
trim(1499,1547    )  ++ \
trim(803,848      )  ++ \
trim(1383,1434    )  ++ \
trim(921,968      )  ++ \
trim(1684,1691    )  ++ \
trim(1311,1382    )  

v + blankclip.trim(0,320)

b=blankclip(v)

# MT("""
# super = MSuper(pel=2, sharp=1)
# backward_vec2 = super.MAnalyse(isb = true, delta = 2, overlap=4) 
# backward_vec1 = super.MAnalyse(isb = true, delta = 1, overlap=4)
# forward_vec1 = super.MAnalyse(isb = false, delta = 1, overlap=4)
# forward_vec2 = super.MAnalyse(isb = false, delta = 2, overlap=4)
# MDegrain2(super, backward_vec1,forward_vec1,backward_vec2,forward_vec2,thSAD=210)
# flash3kyuu_deband(grainy=64,grainc=32, dither_algo=2)
# """,2,overlap=16)
# MT("""
SremovedirtMC(32)
flash3kyuu_deband(grainy=64,grainc=32, dither_algo=2)
# """,2,overlap=16)

limiter

