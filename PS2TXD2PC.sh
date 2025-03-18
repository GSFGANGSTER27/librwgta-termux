#!/data/data/com.termux/files/usr/bin/dash
# Converts converts any TXDs to PC (might be outdated method, just use MagicTXD)

# Converting...
cd "/storage/emulated/0/gtastuff/librwgta/TXDS"
for i in *.txd
    do convtxd "$i" "out/${i%.*}.txd"
done

# Removing unconverted TXDs to avoid irritations
for i in *.txd
    do rm "$i"
done

cd