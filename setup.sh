#!/bin/bash

#step1:Create a the trash bucket folder(use .local/share/Trash folder)

TRASH_BASE="$HOME/.local/share/";
if [ -d "$TRASH_BASE/Trash/files" ] && [ -d "$TRASH_BASE/Trash/info" ]; then
    echo "Trash folder exists"
else
    mkdir -p "$TRASH_BASE/Trash/files" "$TRASH_BASE/Trash/info";
    echo "created Trash folder at $TRASH_BASE ";
fi


if command -v zip &> /dev/null;
then
    echo "zip is installed."
else
    echo "zip is not present, Install it."
    echo "INFO:"
    echo "https://www.tecmint.com/install-zip-and-unzip-in-linux/"
    echo "https://linux.die.net/man/1/zip"
fi

alies trash = 'bash temp.sh'

#step2:write a script which will compress the files and moves it to Trash folder
#step3:use alies to convert the bash script cmd to trash cmd
#step4:add restore and undo as option
#step5:add man page or --help option 
