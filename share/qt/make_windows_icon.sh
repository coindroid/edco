#!/bin/bash
# create multiresolution windows icon
#mainnet
ICON_SRC=../../src/qt/res/icons/edco.png
ICON_DST=../../src/qt/res/icons/edco.ico
convert ${ICON_SRC} -resize 16x16 edco-16.png
convert ${ICON_SRC} -resize 32x32 edco-32.png
convert ${ICON_SRC} -resize 48x48 edco-48.png
convert edco-16.png edco-32.png edco-48.png ${ICON_DST}
#testnet
ICON_SRC=../../src/qt/res/icons/edco_testnet.png
ICON_DST=../../src/qt/res/icons/edco_testnet.ico
convert ${ICON_SRC} -resize 16x16 edco-16.png
convert ${ICON_SRC} -resize 32x32 edco-32.png
convert ${ICON_SRC} -resize 48x48 edco-48.png
convert edco-16.png edco-32.png edco-48.png ${ICON_DST}
rm edco-16.png edco-32.png edco-48.png
#regtest
ICON_SRC=../../src/qt/res/icons/edco_regtest.png
ICON_DST=../../src/qt/res/icons/edco_regtest.ico
convert ${ICON_SRC} -resize 16x16 edco-16.png
convert ${ICON_SRC} -resize 32x32 edco-32.png
convert ${ICON_SRC} -resize 48x48 edco-48.png
convert edco-16.png edco-32.png edco-48.png ${ICON_DST}
rm edco-16.png edco-32.png edco-48.png
#unittest
ICON_SRC=../../src/qt/res/icons/edco_unittest.png
ICON_DST=../../src/qt/res/icons/edco_unittest.ico
convert ${ICON_SRC} -resize 16x16 edco-16.png
convert ${ICON_SRC} -resize 32x32 edco-32.png
convert ${ICON_SRC} -resize 48x48 edco-48.png
convert edco-16.png edco-32.png edco-48.png ${ICON_DST}
rm edco-16.png edco-32.png edco-48.png