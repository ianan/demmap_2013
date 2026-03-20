pro find_dempx_locations

  ;  load in previous map

  ; This data was prep'd but no degradation correction
  ; (would need to use time dependant responses in DEM calculation)
  restgen,file='DCPsmap16_20101103_121502.genx',smap

  dd=smap.data
  dur=smap.dur*1.
  for i=0, 5 do dd[*,*,i]=dd[*,*,i]/dur[i]

  ;; pixels to work out DEMs
  x1=171
  y1=200

  x2=265
  y2=240

  x3=80
  y3=400

  x4=180
  y4=400

  x5=300
  y5=100

  x6=385
  y6=250

  x7=110
  y7=140

  x8=101
  y8=130

  ;; Plot things, though need tvim
  ;  aia_lct, r, g, b, wavelnth=131, /load
  ;  tvim,alog10(dd[*,*,1] >0.5),/noframe
  ;  xyouts,420,460,'131'+string(197b),color=255,/data,chars=2
  ;
  ;  plots,x1,y1,psym=1,color=255,syms=4
  ;  xyouts,x1-15,y1-15,'1',color=255,/data,chars=2
  ;  plots,x2,y2,psym=1,color=255,syms=4
  ;  xyouts,x2-15,y2-15,'2',color=255,/data,chars=2
  ;  plots,x3,y3,psym=1,color=255,syms=4
  ;  xyouts,x3-15,y3-15,'3',color=255,/data,chars=2
  ;  plots,x4,y4,psym=1,color=255,syms=4
  ;  xyouts,x4-15,y4-15,'4',color=255,/data,chars=2
  ;  plots,x5,y5,psym=1,color=255,syms=4
  ;  xyouts,x5-15,y5-15,'5',color=255,/data,chars=2
  ;  plots,x6,y6,psym=1,color=255,syms=4
  ;  xyouts,x6-15,y6-15,'6',color=255,/data,chars=2
  ;  plots,x7,y7,psym=1,color=255,syms=4
  ;  xyouts,x7+5,y7+5,'7',color=255,/data,chars=2
  ;  plots,x8,y8,psym=1,color=255,syms=4
  ;  xyouts,x8-15,y8-15,'8',color=255,/data,chars=2
  
  ;; Print out the data values
  print,'Pixel1: DN/s', reform(dd[x1,y1,*])
  print,'Pixel2: DN/s', reform(dd[x2,y2,*])
  print,'Pixel3: DN/s', reform(dd[x3,y3,*])
  print,'Pixel4: DN/s', reform(dd[x4,y4,*])
  print,'Pixel5: DN/s', reform(dd[x5,y5,*])
  print,'Pixel6: DN/s', reform(dd[x6,y6,*])
  print,'Pixel7: DN/s', reform(dd[x7,y7,*])
  print,'Pixel8: DN/s', reform(dd[x8,y8,*])

  ;;  Output results
  ;IDL> find_dempx_locations
  ;% Compiled module: FIND_DEMPX_LOCATIONS.
  ;Pixel1: DN/s       8.5870889       70.757853       95.722523       383.00859       172.22575       17.591089
  ;Pixel2: DN/s       9.8285594       41.772067       292.62625       1156.8835       493.87151       43.576418
  ;Pixel3: DN/s      0.66636645       1.2162571       35.711636       103.20698       41.792240       3.2691853
  ;Pixel4: DN/s       3.0924005       1.6842144       63.123365       189.49000       86.802960       8.3043358
  ;Pixel5: DN/s       6.5777532       15.229811       505.55727       882.35426       299.36241       18.988423
  ;Pixel6: DN/s       33.657514       370.31858       1660.7684       4025.5698       1525.3118       189.40087
  ;Pixel7: DN/s       2.0251243       10.697401       102.89609       311.32302       131.96236       11.580152
  ;Pixel8: DN/s       1.6036062       2.2046986       95.005964       273.76361       125.01312       9.1095233


  stop
end