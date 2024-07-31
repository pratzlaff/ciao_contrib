#! /bin/sh

dewiggle input.fits dewiggle.fits clobber+
test $(dmkeypar dewiggle.fits datasum echo+) -eq 308955208 || exit 1

detilt dewiggle.fits dewiggle_detilt.fits -6.55610732023077e-07 clobber+
test $(dmkeypar dewiggle_detilt.fits datasum echo+) -eq 707085032 || exit 2

symmetrize dewiggle_detilt.fits dewiggle_detilt_symmetrize.fits clobber+
test $(dmkeypar dewiggle_detilt_symmetrize.fits datasum echo+) -eq 1082584860 || exit 3
