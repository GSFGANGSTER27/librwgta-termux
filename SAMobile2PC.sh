#!/data/data/com.termux/files/usr/bin/dash
# Converts San Andreas Mobile DFF to PC

# Converting...
cd "/storage/emulated/0/gtastuff/librwgta/SanAndreas"
for i in *.dff
    do convdff -u -o d3d8 "$i" "out/${i%.*}.dff"
done

# Removing unconverted DFFs to avoid irritations
for i in *.dff
    do rm "$i"
done

cd
