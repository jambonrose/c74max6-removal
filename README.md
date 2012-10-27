c74max6-removal
===============

An uninstaller for Cycling '74's Max 6 Program on Mac OS X.

This simple bash script removes all of the files created by the Max 6 trial installer and a first run of the Max 6 program. This includes PACE's Interlok Anti-Piracy software. 

The script has been tested on Mac OS 10.7.5 using the Max6_120919_a687c3d installer.

This script is released under GPLv3 (please see code for more information).

### WARNING
This script will indiscriminately delete all of the folders containing Max 6 and Interlok.
Before running this script, please back up any files or projects you would like to keep.
**I provide no guarantee or warranty that this will work as specified, or that it will leave your computer unharmed.**

Determining Files Affected
---------------
```bash
$ touch timestamp.dat
# Install Max 6
$ find / -newer timestamp.dat >> ~/log.txt
$ touch timestamp.dat
# Run Max for first time
$ find / -newer timestamp.dat >> ~/log.txt
$ less ~/log.txt
# the line above will output a list of all the files changed
# NB: not all files in the list are being affected by Max
#     some are being affected by the OS
#     do not attempt to delete all of the files in this log
#     it will end very very badly
```