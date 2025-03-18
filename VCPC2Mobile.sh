#!/data/data/com.termux/files/usr/bin/dash
# Converts Vice City PC DFF to Mobile

# Converting...
cd "/storage/emulated/0/gtastuff/librwgta/ViceCity"
for i in *.dff
    do convdff -i -o mobile "$i" "out/${i%.*}.dff"
done

# Removing unconverted DFFs to avoid irritations
for i in *.dff
    do rm "$i"
done

cd