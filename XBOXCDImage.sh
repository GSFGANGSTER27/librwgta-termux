#!/data/data/com.termux/files/usr/bin/dash
# Converts any GTA XBOX IMG archives

# Converting...
cd "/storage/emulated/0/gtastuff/librwgta/IMG/out"
convcdimage "gta3.img" "out/gta3.img"

# Removing unconverted IMGs to avoid irritations
rm gta3.img

cd