#!/data/data/com.termux/files/usr/bin/dash
# Converts Vice City PS2 DFF to PC

# Converting...
cd "/storage/emulated/0/gtastuff/librwgta/ViceCity"
for i in *.dff
    do convdff -u -o d3d8 "$i" "out/${i%.*}.dff"
done

# Removing unconverted DFFs to avoid irritations
for i in *.dff
    do rm "$i"
done

cd