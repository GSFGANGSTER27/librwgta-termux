#!/data/data/com.termux/files/usr/bin/dash
# Converts San Andreas DFF (for Vehicles) to Vice City

# Converting...
cd "/storage/emulated/0/gtastuff/librwgta/SanAndreas"
for i in *.dff
    do convdff -w -v 36003 "$i" "out/${i%.*}.dff"
done

# Removing unconverted DFFs to avoid irritations
for i in *.dff
    do rm "$i"
done

cd