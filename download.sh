#!/bin/bash
# check if file exists otherwise download
file="LanguageTool-[0-9].[0-9]"
if  ! ls "LanguageTool-stable.zip" >/dev/null 2>&1 ; then
    wget https://languagetool.org/download/LanguageTool-stable.zip
else
    echo "File was already downloaded. If you want another version, remove the archive from the current directory. and rerun the script"
fi


parent_dir=$HOME/.local/bin
target_dir=$parent_dir/languagetool
if  ls $target_dir >/dev/null 2>&1 ;then
    echo "Folder $target_dir already exists, do you want to override it? [y/n]"
    read answer
    if [ $answer = 'y' ]; then
        rm -r $target_dir
    else
       echo "Exiting ..." 
       exit 0
    fi
fi
echo "Unzipping archive to $target_dir"
unzip -q LanguageTool-stable.zip -d $parent_dir/

mv $parent_dir/$file $target_dir
echo "Finished"
