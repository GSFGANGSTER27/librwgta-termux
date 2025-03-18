#!/data/data/com.termux/files/usr/bin/dash
# Converts GTA3 PC DFF to Mobile

# Converting...
cd "/storage/emulated/0/gtastuff/librwgta/ViceCity"
for i in *.dff
    do convdff -w -v 34005 "$i" "out/${i%.*}.dff"
done

# Removing unconverted DFFs to avoid irritations
for i in *.dff
    do rm "$i"
done

cd