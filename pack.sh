#!/bin/sh

SCRIPTFILE=$0

#Get the absolute path to the containing folder
PROJECTFOLDER=${SCRIPTFILE%/*}

cd ${PROJECTFOLDER}

pwd

PROJECTFOLDER=$(pwd)

rm *.mpack

# Pack
mono /Applications/Visual\ Studio.app/Contents/Resources/lib/monodevelop/bin/vstool.exe setup pack ./VisualStudioMac.GetGitUrl/bin/VisualStudioMac.GetGitUrl.dll

# Uninstall
/Applications/Visual\ Studio\ \(Preview\).app/Contents/MacOS/vstool setup uninstall VisualStudioMac.GetGitUrl -y

# # Install
# for filename in *.mpack;
# do
#   echo "$filename"
#   /Applications/Visual\ Studio\ \(Preview\).app/Contents/MacOS/vstool setup install "$PROJECTFOLDER/$filename"
# done
