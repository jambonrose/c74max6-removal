#!/bin/sh

# This script removes Cycling '74's Max 6 MSP application
# This script also removes PACE's Anti-Piracy InterLok application
# Which Cycling '74 installs to enforce the 30 day demo

###############################################################################
#     Copyright (C) 2012  Andrew Pinkham
# 
#     This program is free software: you can redistribute it and/or modify
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     (at your option) any later version.
# 
#     This program is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.
# 
#     You should have received a copy of the GNU General Public License
#     along with this program.  If not, see <http://www.gnu.org/licenses/>.
###############################################################################

DATE=`date +%Y-%h%d-%k.%M.%S.txt`
LOG="removelog-$DATE"

echo "> Log created on `date +%B\ %d\ %Y,\ \a\t\ %k:%M`" > $LOG

# Remove Max and associated files
sudo rm -rfv /Applications/Max6 >> $LOG
rm -rfv ~/Library/Application\ Support/Cycling\ \'74/ >> $LOG
rm -rfv ~/Library/Saved\ Application\ State/com.cycling74* >> $LOG
rm -rfv ~/Library/Autosave\ Information/com.cycling74* >> $LOG
rm -rfv ~/Library/Caches/com.cycling74.Max/ >> $LOG
sudo rm -rfv /private/var/db/receipts/com.cycling74.MaxMSP6.pkg.bom >> $LOG
sudo rm -rfv /private/var/db/receipts/com.cycling74.MaxMSP6.pkg.plist >> $LOG


# Remove InterLok and associate files
sudo rm -rfv /Library/Application\ Support/PACE\ Anti-Piracy/ >> $LOG
sudo rm -rfv /System/Library/Extensions/PACESupportFamily.kext/ >> $LOG
sudo rm -rfv /Library/LaunchDaemons/PACESupport.plist >> $LOG
rm -rfv ~/Library/Preferences/Authorization\ Preferences/Registration/PACE\ Common >> $LOG
rm -rfv ~/Library/Preferences/Authorization\ Preferences/ >> $LOG
sudo rm -rfv /private/var/db/receipts/com.paceap.pkg.InterLokExtensions.bom >> $LOG
sudo rm -rfv /private/var/db/receipts/com.paceap.pkg.InterLokExtensions.plist >> $LOG