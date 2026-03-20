pro save_oldmap_python
  ; Convert the old genx map structure into something python can understand
  compile_opt idl2

  restgen, file = 'DCPsmap16_20101103_121502.genx', smap

  snew = create_struct(smap[0], 'WAVELNTH', 94, 'WAVEUNIT', 'angstrom', 'TELESCOP', 'SDO/AIA', 'INSTRUME', 'AIA_4', 'DETECTOR', 'AIA')
  map2fits_sunpy, snew, 'map_094.fits'

  snew = create_struct(smap[1], 'WAVELNTH', 131, 'WAVEUNIT', 'angstrom', 'TELESCOP', 'SDO/AIA', 'INSTRUME', 'AIA_4', 'DETECTOR', 'AIA')
  map2fits_sunpy, snew, 'map_131.fits'

  snew = create_struct(smap[2], 'WAVELNTH', 171, 'WAVEUNIT', 'angstrom', 'TELESCOP', 'SDO/AIA', 'INSTRUME', 'AIA_4', 'DETECTOR', 'AIA')
  map2fits_sunpy, snew, 'map_171.fits'

  snew = create_struct(smap[3], 'WAVELNTH', 193, 'WAVEUNIT', 'angstrom', 'TELESCOP', 'SDO/AIA', 'INSTRUME', 'AIA_4', 'DETECTOR', 'AIA')
  map2fits_sunpy, snew, 'map_193.fits'

  snew = create_struct(smap[4], 'WAVELNTH', 211, 'WAVEUNIT', 'angstrom', 'TELESCOP', 'SDO/AIA', 'INSTRUME', 'AIA_4', 'DETECTOR', 'AIA')
  map2fits_sunpy, snew, 'map_211.fits'

  snew = create_struct(smap[5], 'WAVELNTH', 335, 'WAVEUNIT', 'angstrom', 'TELESCOP', 'SDO/AIA', 'INSTRUME', 'AIA_4', 'DETECTOR', 'AIA')
  map2fits_sunpy, snew, 'map_335.fits'

  stop
end
