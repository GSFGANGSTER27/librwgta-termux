#!/data/data/com.termux/files/usr/bin/dash
# Converts Vice City DFF to San Andreas

# Converting...
cd "/storage/emulated/0/gtastuff/librwgta/SanAndreas"
for i in *.dff
    do convdff -v 36003 "$i" "out/${i%.*}.dff"
done

# Removing unconverted DFFs to avoid irritations
for i in *.dff
    do rm "$i"
done

cd