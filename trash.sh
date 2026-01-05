#!/bin/bash


TRASH_BASE="$HOME/.local/share/";
TRASH_FILES="$TRASH_BASE/Trash/files";
TRASH_INFO="$TRASH_BASE/Trash/info";



info_file() {
  file=$1
  if [ -e $file ]; then 
      file_exists="$(file . $file)"
  absolute_file_path="$(realpath $file)"
  echo "Absolute path is $absolute_file_path"
  echo "$( date +"%Y-%m-%dT%H:%M:%S")"
  cat << EOF > "$TRASH_INFO/$(basename $file).trashinfo"
[Trash Info]
Path=$absolute_file_path
DeletionDate=$(date +"%Y-%m-%dT%H:%M:%S")
EOF
  else
    echo "File does not exist"
    return
  fi
}



for item in $@ ; do  
  echo "deleting $item"
  info_file "$item"
  mv "$item" "$TRASH_FILES"
done