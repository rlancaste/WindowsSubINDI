# WindowsSubINDI

This repository is meant to support INDI on Windows Subsystem for Linux.  Installing INDI on Windows Subsystem for Linux will involve several steps.

Note that this repository requires a Windows computer capable of running Windows Subsystem for Linux

1. Download this repository.
2. Run Windows Power
3. Copy and paste this command:  Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
4. Once you do that, restart your computer.  Then Install Ubuntu from the Windows Store Application
5. Then Run install.sh to install INDI, gsc, and astrometry.net

Please note this is a work in progress.

-Thank you very much to Microsoft for developing Windows Subsystem for Linux
-Thank you very much to the INDI project for developing INDI: https://github.com/indilib/indi