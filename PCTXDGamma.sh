#!/data/data/com.termux/files/usr/bin/dash
# Changes texture dictionaries gamma to LCS/VCS style (only works for D3D8 aka PC textures)

# Processing...
cd "/storage/emulated/0/gtastuff/librwgta/TXDS"
for i in *.txd
    do convtxd -g "$i" "out/${i%.*}.txd"
done

# Removing unprocessed TXDs to avoid irritations
for i in *.txd
    do rm "$i"
done

cd