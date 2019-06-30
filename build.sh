#!/bin/bash

cd "$( dirname "${BASH_SOURCE[0]}" )" || exit

# Bibata Default
RAWSVGS_Bibata="src/Bibata_Ghost/svgs"
INDEX_Bibata="src/Bibata_Ghost/cursor.theme"
INDEX1_Bibata="src/Bibata_Ghost/index.theme"

# Bibata Spirit

RAWSVGS_Bibata_Spirit="src/Bibata_Sprit/svgs"
INDEX_Bibata_Spirit="src/Bibata_Spirit/cursor.theme"
INDEX1_Bibata_Spirit="src/Bibata_Spirit/index.theme"

# Bibata Tinted

RAWSVGS_Bibata_Tinted="src/Bibata_Tinted/svgs"
INDEX_Bibata_Tinted="src/Bibata_Tinted/cursor.theme"
INDEX1_Bibata_Tinted="src/Bibata_Tinted/index.theme"

ALIASES="src/cursorList"


echo -ne "Checking Requirements...\\r"

if  ! type "inkscape" > /dev/null ; then
    echo -e "\\nFAIL: inkscape must be installed"
    exit 1
fi

if  ! type "xcursorgen" > /dev/null ; then
    echo -e "\\nFAIL: xcursorgen must be installed"
    exit 1
fi
echo -e "Checking Requirements... DONE"



echo -ne "Making Folders... $BASENAME\\r"
DIR11X_Bibata="build/Bibata_Ghost/96x96"
DIR10X_Bibata="build/Bibata_Ghost/88x88"
DIR9X_Bibata="build/Bibata_Ghost/80x80"
DIR8X_Bibata="build/Bibata_Ghost/72x72"
DIR7X_Bibata="build/Bibata_Ghost/64x64"
DIR6X_Bibata="build/Bibata_Ghost/56x56"
DIR5X_Bibata="build/Bibata_Ghost/48x48"
DIR4X_Bibata="build/Bibata_Ghost/40x40"
DIR3X_Bibata="build/Bibata_Ghost/32x32"
DIR2X_Bibata="build/Bibata_Ghost/28x28"
DIR1X_Bibata="build/Bibata_Ghost/24x24"

DIR11X_Bibata_Spirit="build/Bibata_Spirit/96x96"
DIR10X_Bibata_Spirit="build/Bibata_Spirit/88x88"
DIR9X_Bibata_Spirit="build/Bibata_Spirit/80x80"
DIR8X_Bibata_Spirit="build/Bibata_Spirit/72x72"
DIR7X_Bibata_Spirit="build/Bibata_Spirit/64x64"
DIR6X_Bibata_Spirit="build/Bibata_Spirit/56x56"
DIR5X_Bibata_Spirit="build/Bibata_Spirit/48x48"
DIR4X_Bibata_Spirit="build/Bibata_Spirit/40x40"
DIR3X_Bibata_Spirit="build/Bibata_Spirit/32x32"
DIR2X_Bibata_Spirit="build/Bibata_Spirit/28x28"
DIR1X_Bibata_Spirit="build/Bibata_Spirit/24x24"


DIR11X_Bibata_Tinted="build/Bibata_Tinted/96x96"
DIR10X_Bibata_Tinted="build/Bibata_Tinted/88x88"
DIR9X_Bibata_Tinted="build/Bibata_Tinted/80x80"
DIR8X_Bibata_Tinted="build/Bibata_Tinted/72x72"
DIR7X_Bibata_Tinted="build/Bibata_Tinted/64x64"
DIR6X_Bibata_Tinted="build/Bibata_Tinted/56x56"
DIR5X_Bibata_Tinted="build/Bibata_Tinted/48x48"
DIR4X_Bibata_Tinted="build/Bibata_Tinted/40x40"
DIR3X_Bibata_Tinted="build/Bibata_Tinted/32x32"
DIR2X_Bibata_Tinted="build/Bibata_Tinted/28x28"
DIR1X_Bibata_Tinted="build/Bibata_Tinted/24x24"


OUTPUT_Bibata="$(grep --only-matching --perl-regex "(?<=Name\=).*$" $INDEX_Bibata)"
OUTPUT_Bibata=${OUTPUT_Bibata// /_}
OUTPUT_Bibata_Spirit="$(grep --only-matching --perl-regex "(?<=Name\=).*$" $INDEX_Bibata_Spirit)"
OUTPUT_Bibata_Spirit=${OUTPUT_Bibata_Spirit// /_}
OUTPUT_Bibata_Tinted="$(grep --only-matching --perl-regex "(?<=Name\=).*$" $INDEX_Bibata_Tinted)"
OUTPUT_Bibata_Tinted=${OUTPUT_Bibata_Tinted// /_}


mkdir -p "$DIR11X_Bibata" "$DIR10X_Bibata" "$DIR9X_Bibata" "$DIR8X_Bibata" "$DIR7X_Bibata" "$DIR6X_Bibata" "$DIR5X_Bibata" "$DIR4X_Bibata" "$DIR3X_Bibata" "$DIR2X_Bibata" "$DIR1X_Bibata"

mkdir -p "$DIR11X_Bibata_Spirit" "$DIR10X_Bibata_Spirit" "$DIR9X_Bibata_Spirit" "$DIR8X_Bibata_Spirit" "$DIR7X_Bibata_Spirit" "$DIR6X_Bibata_Spirit" "$DIR5X_Bibata_Spirit" "$DIR4X_Bibata_Spirit" "$DIR3X_Bibata_Spirit" "$DIR2X_Bibata_Spirit" "$DIR1X_Bibata_Spirit"

mkdir -p "$DIR11X_Bibata_Tinted" "$DIR10X_Bibata_Tinted" "$DIR9X_Bibata_Tinted" "$DIR8X_Bibata_Tinted" "$DIR7X_Bibata_Tinted" "$DIR6X_Bibata_Tinted" "$DIR5X_Bibata_Tinted" "$DIR4X_Bibata_Tinted" "$DIR3X_Bibata_Tinted" "$DIR2X_Bibata_Tinted" "$DIR1X_Bibata_Tinted"


mkdir -p "$OUTPUT_Bibata/cursors"
mkdir -p "$OUTPUT_Bibata_Spirit/cursors"
mkdir -p "$OUTPUT_Bibata_Tinted/cursors"
echo 'Making Folders... DONE';


for CUR in src/config/*.cursor; do
    BASENAME=$CUR
    BASENAME=${BASENAME##*/}
    BASENAME=${BASENAME%.*}

    echo -ne "\033[0KGenerating simple cursor pixmaps OF Bibata Ghost... $BASENAME\\r"

    inkscape -w 24 -h 24 --without-gui -f $RAWSVGS_Bibata/"$BASENAME".svg -e "$DIR1X_Bibata/$BASENAME.png" > /dev/null
    inkscape -w 28 -h 28 --without-gui -f $RAWSVGS_Bibata/"$BASENAME".svg -e "$DIR2X_Bibata/$BASENAME.png" > /dev/null
    inkscape -w 32 -h 32 --without-gui -f $RAWSVGS_Bibata/"$BASENAME".svg -e "$DIR3X_Bibata/$BASENAME.png" > /dev/null
    inkscape -w 40 -h 40 --without-gui -f $RAWSVGS_Bibata/"$BASENAME".svg -e "$DIR4X_Bibata/$BASENAME.png" > /dev/null
    inkscape -w 48 -h 48 --without-gui -f $RAWSVGS_Bibata/"$BASENAME".svg -e "$DIR5X_Bibata/$BASENAME.png" > /dev/null
    inkscape -w 56 -h 56 --without-gui -f $RAWSVGS_Bibata/"$BASENAME".svg -e "$DIR6X_Bibata/$BASENAME.png" > /dev/null
    inkscape -w 64 -h 64 --without-gui -f $RAWSVGS_Bibata/"$BASENAME".svg -e "$DIR7X_Bibata/$BASENAME.png" > /dev/null
    inkscape -w 72 -h 72 --without-gui -f $RAWSVGS_Bibata/"$BASENAME".svg -e "$DIR8X_Bibata/$BASENAME.png" > /dev/null
    inkscape -w 80 -h 80 --without-gui -f $RAWSVGS_Bibata/"$BASENAME".svg -e "$DIR9X_Bibata/$BASENAME.png" > /dev/null
    inkscape -w 88 -h 88 --without-gui -f $RAWSVGS_Bibata/"$BASENAME".svg -e "$DIR10X_Bibata/$BASENAME.png" > /dev/null
    inkscape -w 96 -h 96 --without-gui -f $RAWSVGS_Bibata/"$BASENAME".svg -e "$DIR11X_Bibata/$BASENAME.png" > /dev/null


done
    echo -e "\033[0KGenerating simple cursor pixmaps OF Bibata Ghost... DONE"

for CUR in src/config/*.cursor; do
    BASENAME=$CUR
    BASENAME=${BASENAME##*/}
    BASENAME=${BASENAME%.*}

    echo -ne "\033[0KGenerating simple cursor pixmaps OF Bibata Spirit.. $BASENAME\\r"

    inkscape -w 24 -h 24 --without-gui -f $RAWSVGS_Bibata_Spirit/"$BASENAME".svg -e "$DIR1X_Bibata_Spirit/$BASENAME.png" > /dev/null
    inkscape -w 28 -h 28 --without-gui -f $RAWSVGS_Bibata_Spirit/"$BASENAME".svg -e "$DIR2X_Bibata_Spirit/$BASENAME.png" > /dev/null
    inkscape -w 32 -h 32 --without-gui -f $RAWSVGS_Bibata_Spirit/"$BASENAME".svg -e "$DIR3X_Bibata_Spirit/$BASENAME.png" > /dev/null
    inkscape -w 40 -h 40 --without-gui -f $RAWSVGS_Bibata_Spirit/"$BASENAME".svg -e "$DIR4X_Bibata_Spirit/$BASENAME.png" > /dev/null
    inkscape -w 48 -h 48 --without-gui -f $RAWSVGS_Bibata_Spirit/"$BASENAME".svg -e "$DIR5X_Bibata_Spirit/$BASENAME.png" > /dev/null
    inkscape -w 56 -h 56 --without-gui -f $RAWSVGS_Bibata_Spirit/"$BASENAME".svg -e "$DIR6X_Bibata_Spirit/$BASENAME.png" > /dev/null
    inkscape -w 64 -h 64 --without-gui -f $RAWSVGS_Bibata_Spirit/"$BASENAME".svg -e "$DIR7X_Bibata_Spirit/$BASENAME.png" > /dev/null
    inkscape -w 72 -h 72 --without-gui -f $RAWSVGS_Bibata_Spirit/"$BASENAME".svg -e "$DIR8X_Bibata_Spirit/$BASENAME.png" > /dev/null
    inkscape -w 80 -h 80 --without-gui -f $RAWSVGS_Bibata_Spirit/"$BASENAME".svg -e "$DIR9X_Bibata_Spirit/$BASENAME.png" > /dev/null
    inkscape -w 88 -h 88 --without-gui -f $RAWSVGS_Bibata_Spirit/"$BASENAME".svg -e "$DIR10X_Bibata_Spirit/$BASENAME.png" > /dev/null
    inkscape -w 96 -h 96 --without-gui -f $RAWSVGS_Bibata_Spirit/"$BASENAME".svg -e "$DIR11X_Bibata_Spirit/$BASENAME.png" > /dev/null

done
    echo -e "\033[0KGenerating simple cursor pixmaps OF Bibata Spirit... DONE"

for CUR in src/config/*.cursor; do
    BASENAME=$CUR
    BASENAME=${BASENAME##*/}
    BASENAME=${BASENAME%.*}

    echo -ne "\033[0KGenerating simple cursor pixmaps OF Bibata Tinted.. $BASENAME\\r"

    inkscape -w 24 -h 24 --without-gui -f $RAWSVGS_Bibata_Tinted/"$BASENAME".svg -e "$DIR1X_Bibata_Tinted/$BASENAME.png" > /dev/null
    inkscape -w 28 -h 28 --without-gui -f $RAWSVGS_Bibata_Tinted/"$BASENAME".svg -e "$DIR2X_Bibata_Tinted/$BASENAME.png" > /dev/null
    inkscape -w 32 -h 32 --without-gui -f $RAWSVGS_Bibata_Tinted/"$BASENAME".svg -e "$DIR3X_Bibata_Tinted/$BASENAME.png" > /dev/null
    inkscape -w 40 -h 40 --without-gui -f $RAWSVGS_Bibata_Tinted/"$BASENAME".svg -e "$DIR4X_Bibata_Tinted/$BASENAME.png" > /dev/null
    inkscape -w 48 -h 48 --without-gui -f $RAWSVGS_Bibata_Tinted/"$BASENAME".svg -e "$DIR5X_Bibata_Tinted/$BASENAME.png" > /dev/null
    inkscape -w 56 -h 56 --without-gui -f $RAWSVGS_Bibata_Tinted/"$BASENAME".svg -e "$DIR6X_Bibata_Tinted/$BASENAME.png" > /dev/null
    inkscape -w 64 -h 64 --without-gui -f $RAWSVGS_Bibata_Tinted/"$BASENAME".svg -e "$DIR7X_Bibata_Tinted/$BASENAME.png" > /dev/null
    inkscape -w 72 -h 72 --without-gui -f $RAWSVGS_Bibata_Tinted/"$BASENAME".svg -e "$DIR8X_Bibata_Tinted/$BASENAME.png" > /dev/null
    inkscape -w 80 -h 80 --without-gui -f $RAWSVGS_Bibata_Tinted/"$BASENAME".svg -e "$DIR9X_Bibata_Tinted/$BASENAME.png" > /dev/null
    inkscape -w 88 -h 88 --without-gui -f $RAWSVGS_Bibata_Tinted/"$BASENAME".svg -e "$DIR10X_Bibata_Tinted/$BASENAME.png" > /dev/null
    inkscape -w 96 -h 96 --without-gui -f $RAWSVGS_Bibata_Tinted/"$BASENAME".svg -e "$DIR11X_Bibata_Tinted/$BASENAME.png" > /dev/null

done
    echo -e "\033[0KGenerating simple cursor pixmaps OF Bibata Tinted... DONE"

    echo -ne "\033[0KGenerating Animated Cursor Bibata Ghost... \\r"
for i in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45
do
    echo -ne "\033[0KGenerating animated cursor pixmaps For Bibata Ghost Process... $i / 45 \\r"

    inkscape -w 24 -h 24 --without-gui -f $RAWSVGS_Bibata/progress-$i.svg -e "$DIR1X_Bibata/progress-$i.png" > /dev/null
    inkscape -w 28 -h 28 --without-gui -f $RAWSVGS_Bibata/progress-$i.svg -e "$DIR2X_Bibata/progress-$i.png" > /dev/null
    inkscape -w 32 -h 32 --without-gui -f $RAWSVGS_Bibata/progress-$i.svg -e "$DIR3X_Bibata/progress-$i.png" > /dev/null
    inkscape -w 40 -h 40 --without-gui -f $RAWSVGS_Bibata/progress-$i.svg -e "$DIR4X_Bibata/progress-$i.png" > /dev/null
    inkscape -w 48 -h 48 --without-gui -f $RAWSVGS_Bibata/progress-$i.svg -e "$DIR5X_Bibata/progress-$i.png" > /dev/null
    inkscape -w 56 -h 56 --without-gui -f $RAWSVGS_Bibata/progress-$i.svg -e "$DIR6X_Bibata/progress-$i.png" > /dev/null
    inkscape -w 64 -h 64 --without-gui -f $RAWSVGS_Bibata/progress-$i.svg -e "$DIR7X_Bibata/progress-$i.png" > /dev/null
    inkscape -w 72 -h 72 --without-gui -f $RAWSVGS_Bibata/progress-$i.svg -e "$DIR8X_Bibata/progress-$i.png" > /dev/null
    inkscape -w 80 -h 80 --without-gui -f $RAWSVGS_Bibata/progress-$i.svg -e "$DIR9X_Bibata/progress-$i.png" > /dev/null
    inkscape -w 88 -h 88 --without-gui -f $RAWSVGS_Bibata/progress-$i.svg -e "$DIR10X_Bibata/progress-$i.png" > /dev/null
    inkscape -w 96 -h 96 --without-gui -f $RAWSVGS_Bibata/progress-$i.svg -e "$DIR11X_Bibata/progress-$i.png" > /dev/null

done
    echo -e "\033[0KGenerating animated cursor pixmaps For Bibata Ghost Process... DONE"

for i in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45
do
    echo -ne "\033[0KGenerating animated cursor pixmaps For Bibata Ghost Wait... $i / 45 \\r"

    inkscape -w 24 -h 24 --without-gui -f $RAWSVGS_Bibata/wait-$i.svg -e "$DIR1X_Bibata/wait-$i.png" > /dev/null
    inkscape -w 28 -h 28 --without-gui -f $RAWSVGS_Bibata/wait-$i.svg -e "$DIR2X_Bibata/wait-$i.png" > /dev/null
    inkscape -w 32 -h 32 --without-gui -f $RAWSVGS_Bibata/wait-$i.svg -e "$DIR3X_Bibata/wait-$i.png" > /dev/null
    inkscape -w 40 -h 40 --without-gui -f $RAWSVGS_Bibata/wait-$i.svg -e "$DIR4X_Bibata/wait-$i.png" > /dev/null
    inkscape -w 48 -h 48 --without-gui -f $RAWSVGS_Bibata/wait-$i.svg -e "$DIR5X_Bibata/wait-$i.png" > /dev/null
    inkscape -w 56 -h 56 --without-gui -f $RAWSVGS_Bibata/wait-$i.svg -e "$DIR6X_Bibata/wait-$i.png" > /dev/null
    inkscape -w 64 -h 64 --without-gui -f $RAWSVGS_Bibata/wait-$i.svg -e "$DIR7X_Bibata/wait-$i.png" > /dev/null
    inkscape -w 72 -h 72 --without-gui -f $RAWSVGS_Bibata/wait-$i.svg -e "$DIR8X_Bibata/wait-$i.png" > /dev/null
    inkscape -w 80 -h 80 --without-gui -f $RAWSVGS_Bibata/wait-$i.svg -e "$DIR9X_Bibata/wait-$i.png" > /dev/null
    inkscape -w 88 -h 88 --without-gui -f $RAWSVGS_Bibata/wait-$i.svg -e "$DIR10X_Bibata/wait-$i.png" > /dev/null
    inkscape -w 96 -h 96 --without-gui -f $RAWSVGS_Bibata/wait-$i.svg -e "$DIR11X_Bibata/wait-$i.png" > /dev/null

done
    echo -e "\033[0KGenerating animated cursor pixmaps For Bibata Ghost Wait... DONE"
    echo -ne "\033[0KGenerating Animated Cursor Bibata Ghost... DONE \\r"

    echo -ne "\033[0KGenerating Animated Cursor Bibata Spirit... \\r"
for i in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45
do
    echo -ne "\033[0KGenerating animated cursor pixmaps For Bibata Spirit Process... $i / 45 \\r"

    inkscape -w 24 -h 24 --without-gui -f $RAWSVGS_Bibata_Spirit/progress-$i.svg -e "$DIR1X_Bibata_Spirit/progress-$i.png" > /dev/null
    inkscape -w 28 -h 28 --without-gui -f $RAWSVGS_Bibata_Spirit/progress-$i.svg -e "$DIR2X_Bibata_Spirit/progress-$i.png" > /dev/null
    inkscape -w 32 -h 32 --without-gui -f $RAWSVGS_Bibata_Spirit/progress-$i.svg -e "$DIR3X_Bibata_Spirit/progress-$i.png" > /dev/null
    inkscape -w 40 -h 40 --without-gui -f $RAWSVGS_Bibata_Spirit/progress-$i.svg -e "$DIR4X_Bibata_Spirit/progress-$i.png" > /dev/null
    inkscape -w 48 -h 48 --without-gui -f $RAWSVGS_Bibata_Spirit/progress-$i.svg -e "$DIR5X_Bibata_Spirit/progress-$i.png" > /dev/null
    inkscape -w 56 -h 56 --without-gui -f $RAWSVGS_Bibata_Spirit/progress-$i.svg -e "$DIR6X_Bibata_Spirit/progress-$i.png" > /dev/null
    inkscape -w 64 -h 64 --without-gui -f $RAWSVGS_Bibata_Spirit/progress-$i.svg -e "$DIR7X_Bibata_Spirit/progress-$i.png" > /dev/null
    inkscape -w 72 -h 72 --without-gui -f $RAWSVGS_Bibata_Spirit/progress-$i.svg -e "$DIR8X_Bibata_Spirit/progress-$i.png" > /dev/null
    inkscape -w 80 -h 80 --without-gui -f $RAWSVGS_Bibata_Spirit/progress-$i.svg -e "$DIR9X_Bibata_Spirit/progress-$i.png" > /dev/null
    inkscape -w 88 -h 88 --without-gui -f $RAWSVGS_Bibata_Spirit/progress-$i.svg -e "$DIR10X_Bibata_Spirit/progress-$i.png" > /dev/null
    inkscape -w 96 -h 96 --without-gui -f $RAWSVGS_Bibata_Spirit/progress-$i.svg -e "$DIR11X_Bibata_Spirit/progress-$i.png" > /dev/null

done
    echo -e "\033[0KGenerating animated cursor pixmaps For Bibata Spirit Process... DONE"

for i in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45
do
    echo -ne "\033[0KGenerating animated cursor pixmaps For Bibata Spirit Wait... $i / 45 \\r"

    inkscape -w 24 -h 24 --without-gui -f $RAWSVGS_Bibata_Spirit/wait-$i.svg -e "$DIR1X_Bibata_Spirit/wait-$i.png" > /dev/null
    inkscape -w 28 -h 28 --without-gui -f $RAWSVGS_Bibata_Spirit/wait-$i.svg -e "$DIR2X_Bibata_Spirit/wait-$i.png" > /dev/null
    inkscape -w 32 -h 32 --without-gui -f $RAWSVGS_Bibata_Spirit/wait-$i.svg -e "$DIR3X_Bibata_Spirit/wait-$i.png" > /dev/null
    inkscape -w 40 -h 40 --without-gui -f $RAWSVGS_Bibata_Spirit/wait-$i.svg -e "$DIR4X_Bibata_Spirit/wait-$i.png" > /dev/null
    inkscape -w 48 -h 48 --without-gui -f $RAWSVGS_Bibata_Spirit/wait-$i.svg -e "$DIR5X_Bibata_Spirit/wait-$i.png" > /dev/null
    inkscape -w 56 -h 56 --without-gui -f $RAWSVGS_Bibata_Spirit/wait-$i.svg -e "$DIR6X_Bibata_Spirit/wait-$i.png" > /dev/null
    inkscape -w 64 -h 64 --without-gui -f $RAWSVGS_Bibata_Spirit/wait-$i.svg -e "$DIR7X_Bibata_Spirit/wait-$i.png" > /dev/null
    inkscape -w 72 -h 72 --without-gui -f $RAWSVGS_Bibata_Spirit/wait-$i.svg -e "$DIR8X_Bibata_Spirit/wait-$i.png" > /dev/null
    inkscape -w 80 -h 80 --without-gui -f $RAWSVGS_Bibata_Spirit/wait-$i.svg -e "$DIR9X_Bibata_Spirit/wait-$i.png" > /dev/null
    inkscape -w 88 -h 88 --without-gui -f $RAWSVGS_Bibata_Spirit/wait-$i.svg -e "$DIR10X_Bibata_Spirit/wait-$i.png" > /dev/null
    inkscape -w 96 -h 96 --without-gui -f $RAWSVGS_Bibata_Spirit/wait-$i.svg -e "$DIR11X_Bibata_Spirit/wait-$i.png" > /dev/null

done
    echo -e "\033[0KGenerating animated cursor pixmaps For Bibata Spirit Wait... DONE"
    echo -ne "\033[0KGenerating Animated Cursor Bibata Spirit... DONE \\r"

    echo -ne "\033[0KGenerating Animated Cursor Bibata Tinted...  \\r"
for i in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45
do
    echo -ne "\033[0KGenerating animated cursor pixmaps For Bibata Tinted Process... $i / 45 \\r"

    inkscape -w 24 -h 24 --without-gui -f $RAWSVGS_Bibata_Tinted/progress-$i.svg -e "$DIR1X_Bibata_Tinted/progress-$i.png" > /dev/null
    inkscape -w 28 -h 28 --without-gui -f $RAWSVGS_Bibata_Tinted/progress-$i.svg -e "$DIR2X_Bibata_Tinted/progress-$i.png" > /dev/null
    inkscape -w 32 -h 32 --without-gui -f $RAWSVGS_Bibata_Tinted/progress-$i.svg -e "$DIR3X_Bibata_Tinted/progress-$i.png" > /dev/null
    inkscape -w 40 -h 40 --without-gui -f $RAWSVGS_Bibata_Tinted/progress-$i.svg -e "$DIR4X_Bibata_Tinted/progress-$i.png" > /dev/null
    inkscape -w 48 -h 48 --without-gui -f $RAWSVGS_Bibata_Tinted/progress-$i.svg -e "$DIR5X_Bibata_Tinted/progress-$i.png" > /dev/null
    inkscape -w 56 -h 56 --without-gui -f $RAWSVGS_Bibata_Tinted/progress-$i.svg -e "$DIR6X_Bibata_Tinted/progress-$i.png" > /dev/null
    inkscape -w 64 -h 64 --without-gui -f $RAWSVGS_Bibata_Tinted/progress-$i.svg -e "$DIR7X_Bibata_Tinted/progress-$i.png" > /dev/null
    inkscape -w 72 -h 72 --without-gui -f $RAWSVGS_Bibata_Tinted/progress-$i.svg -e "$DIR8X_Bibata_Tinted/progress-$i.png" > /dev/null
    inkscape -w 80 -h 80 --without-gui -f $RAWSVGS_Bibata_Tinted/progress-$i.svg -e "$DIR9X_Bibata_Tinted/progress-$i.png" > /dev/null
    inkscape -w 88 -h 88 --without-gui -f $RAWSVGS_Bibata_Tinted/progress-$i.svg -e "$DIR10X_Bibata_Tinted/progress-$i.png" > /dev/null
    inkscape -w 96 -h 96 --without-gui -f $RAWSVGS_Bibata_Tinted/progress-$i.svg -e "$DIR11X_Bibata_Tinted/progress-$i.png" > /dev/null

done
    echo -e "\033[0KGenerating animated cursor pixmaps For Bibata Tinted Process... DONE"
for i in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45
do
    echo -ne "\033[0KGenerating animated cursor pixmaps For Bibata Tinted Wait... $i / 45 \\r"

    inkscape -w 24 -h 24 --without-gui -f $RAWSVGS_Bibata_Tinted/wait-$i.svg -e "$DIR1X_Bibata_Tinted/wait-$i.png" > /dev/null
    inkscape -w 28 -h 28 --without-gui -f $RAWSVGS_Bibata_Tinted/wait-$i.svg -e "$DIR2X_Bibata_Tinted/wait-$i.png" > /dev/null
    inkscape -w 32 -h 32 --without-gui -f $RAWSVGS_Bibata_Tinted/wait-$i.svg -e "$DIR3X_Bibata_Tinted/wait-$i.png" > /dev/null
    inkscape -w 40 -h 40 --without-gui -f $RAWSVGS_Bibata_Tinted/wait-$i.svg -e "$DIR4X_Bibata_Tinted/wait-$i.png" > /dev/null
    inkscape -w 48 -h 48 --without-gui -f $RAWSVGS_Bibata_Tinted/wait-$i.svg -e "$DIR5X_Bibata_Tinted/wait-$i.png" > /dev/null
    inkscape -w 56 -h 56 --without-gui -f $RAWSVGS_Bibata_Tinted/wait-$i.svg -e "$DIR6X_Bibata_Tinted/wait-$i.png" > /dev/null
    inkscape -w 64 -h 64 --without-gui -f $RAWSVGS_Bibata_Tinted/wait-$i.svg -e "$DIR7X_Bibata_Tinted/wait-$i.png" > /dev/null
    inkscape -w 72 -h 72 --without-gui -f $RAWSVGS_Bibata_Tinted/wait-$i.svg -e "$DIR8X_Bibata_Tinted/wait-$i.png" > /dev/null
    inkscape -w 80 -h 80 --without-gui -f $RAWSVGS_Bibata_Tinted/wait-$i.svg -e "$DIR9X_Bibata_Tinted/wait-$i.png" > /dev/null
    inkscape -w 88 -h 88 --without-gui -f $RAWSVGS_Bibata_Tinted/wait-$i.svg -e "$DIR10X_Bibata_Tinted/wait-$i.png" > /dev/null
    inkscape -w 96 -h 96 --without-gui -f $RAWSVGS_Bibata_Tinted/wait-$i.svg -e "$DIR11X_Bibata_Tinted/wait-$i.png" > /dev/null

done
    echo -e "\033[0KGenerating animated cursor pixmaps For Bibata Tinted Wait... DONE"
    echo -ne "\033[0KGenerating Animated Cursor Bibata Tinted... DONE \\r"

echo -ne "Generating cursor theme...\\r"
for CUR in src/config/*.cursor; do
    BASENAME=$CUR
    BASENAME=${BASENAME##*/}
    BASENAME=${BASENAME%.*}

    ERR="$( xcursorgen -p build/Bibata_Ghost "$CUR" "$OUTPUT_Bibata/cursors/$BASENAME" 2>&1 )"

    if [[ "$?" -ne "0" ]]; then
        echo "FAIL: $CUR $ERR"
    fi

    ERR="$( xcursorgen -p build/Bibata_Spirit "$CUR" "$OUTPUT_Bibata_Spirit/cursors/$BASENAME" 2>&1 )"

    if [[ "$?" -ne "0" ]]; then
        echo "FAIL: $CUR $ERR"
    fi

    ERR="$( xcursorgen -p build/Bibata_Tinted "$CUR" "$OUTPUT_Bibata_Tinted/cursors/$BASENAME" 2>&1 )"

    if [[ "$?" -ne "0" ]]; then
        echo "FAIL: $CUR $ERR"
    fi

done
echo -e "Generating cursor theme... DONE"


echo -ne "Generating shortcuts...\\r"
while read -r ALIAS ; do
    FROM=${ALIAS% *}
    TO=${ALIAS#* }

    if [ -e "$OUTPUT_Bibata/cursors/$FROM" ] ; then
        continue
    fi
    ln -s "$TO" "$OUTPUT_Bibata/cursors/$FROM"

    if [ -e "$OUTPUT_Bibata_Spirit/cursors/$FROM" ] ; then
        continue
    fi
    ln -s "$TO" "$OUTPUT_Bibata_Spirit/cursors/$FROM"

    if [ -e "$OUTPUT_Bibata_Tinted/cursors/$FROM" ] ; then
        continue
    fi
    ln -s "$TO" "$OUTPUT_Bibata_Tinted/cursors/$FROM"

done < $ALIASES
echo -e "\033[0KGenerating shortcuts... DONE"


echo -ne "Copying Theme Index...\\r"

    if ! [ -e "$OUTPUT_Bibata/$INDEX_Bibata" ] ; then
        cp $INDEX_Bibata "$OUTPUT_Bibata/cursor.theme"
        cp $INDEX1_Bibata "$OUTPUT_Bibata/index.theme"
    fi

    if ! [ -e "$OUTPUT_Bibata_Spirit/$INDEX_Bibata_Spirit" ] ; then
        cp $INDEX_Bibata_Spirit "$OUTPUT_Bibata_Spirit/cursor.theme"
        cp $INDEX1_Bibata_Spirit "$OUTPUT_Bibata_Spirit/index.theme"
    fi
    if ! [ -e "$OUTPUT_Bibata_Tinted/$INDEX_Bibata_Tinted" ] ; then
        cp $INDEX_Bibata_Tinted "$OUTPUT_Bibata_Tinted/cursor.theme"
        cp $INDEX1_Bibata_Tinted "$OUTPUT_Bibata_Tinted/index.theme"
    fi
echo -e "\033[0KCopying Theme Index... DONE"


echo -ne "Generating Installer...\\r"
    if ! [ -e "$OUTPUT_Bibata/$INDEX_Bibata" ] ; then
        cd "$( dirname "${BASH_SOURCE[0]}" )" || exit
        cp src/in.inst Installer_Bibata.sh
    fi
echo -e "\033[0KGenerating Installer... DONE"

echo -ne "Making Installer Executable...\\r"
    if ! [ -e "$OUTPUT_Bibata/$INDEX_Bibata" ] ; then
        cd "$( dirname "${BASH_SOURCE[0]}" )" || exit
        gksu chmod +x Installer_Bibata.sh
    fi

show_Msg() {
  echo -e "\033[1;34m$@\033[0m"
}
show_command() {
  echo -e "\033[1;93m$@\033[0m"
}

echo -e "\033[0KMaking Installer Executable... DONE"

show_Msg "For Installation Use Following Command:\n\n"
show_command "\t sudo ./Installer_Bibata.sh\n"
exit

echo "COMPLETE!"
