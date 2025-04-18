#!/bin/bash

# Fail the entire build if one command fails.
set -e

# Increase memory for Node to about 8gb
export NODE_OPTIONS=--max_old_space_size=8192

#
# Build to merge.js layers fonts into base COLR fonts
# By James Grieshaber 08/2022 G
#

# (Could use RGBA transparent ffffff00, or other levels of transparency for effects)

# -------------------------------------------------------------
#
# Aetna Streamer
#

# Change into family directory
cd AetnaHWT-Dev

merge.js "fonts/cff/HWTAetnaStreamer-Banner.otf#a50d12ff" \
         "fonts/cff/HWTAetnaStreamer-Shadow.otf#d2232aff" \
         "fonts/cff/HWTAetnaStreamer-Outline.otf#f2e7d2ff" \
         "fonts/cff/HWTAetnaStreamer-Fill.otf#231f20ff" \
         "fonts/HWTAetnaStreamerCOLR.otf"

cd ..

#
# Aetna Shadow
#

# Change into family directory
cd AetnaHWT-Dev

merge.js "fonts/cff/HWTAetnaStreamer-Shadow.otf#d2232aff" \
         "fonts/cff/HWTAetnaStreamer-Outline.otf#f2e7d2ff" \
         "fonts/cff/HWTAetnaStreamer-Fill.otf#231f20ff" \
         "fonts/HWTAetnaShadowCOLR.otf"

cd ..

# -------------------------------------------------------------
#
# American (4 Layers)
#

# Change into family directory
cd AmericanChromaticHWT-Dev

# Call merge.js with each layer and its color. Write the result to the last filename.
merge.js "fonts/cff/HWTAmericanSolid.otf#f2e7d2ff" \
         "fonts/cff/HWTAmericanOutline.otf#333333ff" \
         "fonts/cff/HWTAmericanInset.otf#a50d12ff" \
         "fonts/cff/HWTAmericanStars.otf#80b2b9ff" \
         "fonts/HWTAmericanStars4COLR.otf"

# Change back to root directory, ready for the next family.
cd ..

#
# American (2 Layers Fill)
#

# Change into family directory
# cd AmericanChromaticHWT-Dev

# Call merge.js with each layer and its color. Write the result to the last filename.
# merge.js "fonts/cff/HWTAmericanSolid.otf#f2e7d2ff" \
#          "fonts/cff/HWTAmericanOutline.otf#333333ff" \
#          "fonts/HWTAmericanFill2COLR.otf"

# Change back to root directory, ready for the next family.
# cd ..

#
# American (2 Layers Inset)
#

# Change into family directory
# cd AmericanChromaticHWT-Dev

# Call merge.js with each layer and its color. Write the result to the last filename.
# merge.js "fonts/cff/HWTAmericanOutline.otf#333333ff" \
#          "fonts/cff/HWTAmericanInset.otf#a50d12ff" \

# Change back to root directory, ready for the next family.
# cd ..

#
# American (3 Layers Fill)
#

# Change into family directory
# cd AmericanChromaticHWT-Dev

# Call merge.js with each layer and its color. Write the result to the last filename.
# merge.js "fonts/cff/HWTAmericanSolid.otf#f2e7d2ff" \
#          "fonts/cff/HWTAmericanOutline.otf#333333ff" \
#          "fonts/cff/HWTAmericanInset.otf#a50d12ff" \
#          "fonts/HWTAmericanFill3COLR.otf"

# Change back to root directory, ready for the next family.
# cd ..

#
# American (3 Layers Stars)
#

# Change into family directory
# cd AmericanChromaticHWT-Dev

# Call merge.js with each layer and its color. Write the result to the last filename.
# merge.js "fonts/cff/HWTAmericanSolid.otf#f2e7d2ff" \
#          "fonts/cff/HWTAmericanOutline.otf#333333ff" \
#          "fonts/cff/HWTAmericanStars.otf#80b2b9ff" \
#          "fonts/HWTAmericanStars3COLR.otf"

# Change back to root directory, ready for the next family.
# cd ..

# -------------------------------------------------------------
#
# Archimedes
#

# Change into family directory
cd ArchimediesHWT-Dev

merge.js "cff/HWTArchimedesRegular.otf#f2e7d2ff" \
         "cff/HWTArchimedesScrew.otf#d2232aff" \
         "HWTArchemedesCOLR.otf"

cd ..

# -------------------------------------------------------------
#
# Lustig
#

# Change into family directory
cd LustigHWT-Dev

merge.js "cff/HWTLustigElementsPro.otf#003322FF" \
         "cff/HWTLustigElementsInPro.otf#000022FF" \
         "HWTLustigCOLR.otf"

cd ..

# -------------------------------------------------------------
#
# Republic Gothic
#

# Change into family directory
cd RepublicGothicHWT-Dev

merge.js "cff/HWTRepublicGothicSolid.otf#003322FF" \
         "cff/HWTRepublicGothicOutline.otf#000022FF" \
         "HWTRepublicGothicCOLR.otf"
cd ..

# -------------------------------------------------------------
#
# Etta East Streamer
#

# Change into family directory
cd EttaHWT-Dev

merge.js "cff/HWTEttaEastStreamer.otf#003322FF" \
         "cff/HWTEttaEast.otf#000022FF" \
         "HWTttaEastStreamerCOLR.otf"
cd ..

#
# Etta West Streamer
#

# Change into family directory
cd EttaHWT-Dev

merge.js "cff/HWTEttaWestStreamer.otf#003322FF" \
         "cff/HWTEttaWest.otf#000022FF" \
         "HWTEttaWestStreamerCOLR.otf"
cd ..

#
# Etta West (2-color)
# (Would need 2 new versions of Etta West with the center bits separated out)
#

# Change into family directory
# cd EttaHWT-Dev

# merge.js "cff/HWTEttaWestInside.otf#003322FF" \
#          "cff/HWTEttaWestOutside.otf#000022FF" \
#          "HWTEttaWest2COLR.otf"
# cd ..



# -------------------------------------------------------------
#
# To Make A New ColorFont
#

# Change to the family directory
# cd <directory-name>

# Call merge.js, colorize.js, or palette.js with appropriate values
# merge.js <base-layer.ttf>#color <first-layer.ttf>#color <output.ttf>

# Change back to the root directory
# cd <root-directory>
