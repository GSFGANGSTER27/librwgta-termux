# librwgta-termux
Just a Termux script that will install goodies from librwgta for GTA games.

First, download Termux APK from github or F-Droid website and install them.
Google Play Store version confirmed to be outdated.

Second, do this command in Termux:
```
termux-setup-storage
pkg install git
git clone --recursive 'https://github.com/GSFGANGSTER27/librwgta-termux'
cd librwgta-termux && sh librwgta-termux-tools.sh && cd
```
# How to do asset conversions
Now that you got everything setup. You can now do a conversion.
I have made a script that automatically converts them, so you don't need to type "convdff blah blah blah".

DFF conversion:
First, do:
```
cd librwgta-termux
```
Second, put the DFF to:
If it's Vice City related conversion:
Put them to "/storage/emulated/0/gtastuff/ViceCity"
If it's GTA3 related conversions:
Put them to "/storage/emulated/0/gtastuff/GTA3"
If it's San Andreas related conversions,
Put them to "/storage/emulated/0/gtastuff/SanAndreas"

The converted DFF will be generated to "out" folder.

Third, choose which conversion to do:
For Vice City PC DFF to Mobile conversions, do:
```
sh VCPC2Mobile.sh
```
For Vice City PS2 DFF to PC conversions, do:
```
sh VCPS2PC.sh
```
For GTA3 PC DFF to Mobile conversions, do:
```
sh GTA3PC2Mobile.sh
```
For Vice City DFF to San Andreas conversions, do:
```
sh VC2SA.sh
```
For Vice City DFF (for Vehicles) to San Andreas conversions, do:
```
sh VC2SAVeh.sh
```
For San Andreas PS2 DFF to PC conversions, do:
```
sh SAPS2PC.sh
```
For San Andreas Mobile DFF to PC conversions, do:
```
sh SAMobile2PC.sh
```


TXD conversion:
Same for the first and second step.

Third step is:
For changing texture gamma to LCS/VCS style, do:
```
sh PCTXDGamma.sh
```

For PS2 TXD to PC conversions, do:
```
sh PS2TXD2PC.sh
```


XBOX IMG conversion:
Same for the first and second step.

Third step is:
Do the command:
```
sh XBOXCDImage.sh
```

# Known issues and others
It has issues that cannot be solved.
storiesconv don't work.

Not every tools are included (e.g. storiesview) since they are mostly for 3d stuff.

Let me know if you have any other issues installing!
