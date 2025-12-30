#!/bin/bash


TRASH_BASE="$HOME/.local/share/";
TRASH_FILES="$TRASH_BASE/Trash/files";
TRASH_INFO="$TRASH_BASE/Trash/info";


for item in $@ ; do  
  echo "deleting $item"
  mv "$item" "$TRASH_FILES"
done

