#!/bin/sh
clear

# Get and goto folder of this script's location
SCRIPTFILE=$0
PROJECTFOLDER=${SCRIPTFILE%/*}
cd ${PROJECTFOLDER}
PROJECTFOLDER=$(pwd)

# Clean
rm *.mpack

# Pack
/Applications/Visual\ Studio.app/Contents/MacOS/vstool setup pack /Users/ivokrugers/Xamarin_Projects/VisualStudioMac.GetGitUrl/VisualStudioMac.GetGitUrl/bin/VisualStudioMac.GetGitUrl.dll


# Copy to local dir
for filename in /Applications/Visual\ Studio\.app/*GetGitUrl*.mpack;
do
  echo "move $filename"
  mv "$filename" .
done

# Uninstall
# /Applications/Visual\ Studio\ \(Preview\).app/Contents/MacOS/vstool setup uninstall VisualStudioMac.SolutionTreeFilter -y

# # Install
# for filename in *.mpack;
# do
#   echo "$filename"
#   /Applications/Visual\ Studio\ \(Preview\).app/Contents/MacOS/vstool setup install "$PROJECTFOLDER/$filename" -y
# done
