#!/usr/bin/env bash
declare -a FILES_TO_SYMLINK=(
  '.bashrc'
  '.bash_profile'
  '.extra'
  '.bash_prompt'
  '.aliases'
  '.bash_tweaks'
  '.bash_git_completion'
  '.editorconfig'
  '.gitconfig'
  '.hyper.js'
)
sourceFile=''
targetFile=''
for i in ${FILES_TO_SYMLINK[@]}; do
  sourceFile="$(pwd)/$i"
  targetFile="$HOME/$i"
  rm "$targetFile"
  ln -sf $sourceFile $targetFile
  echo "symlinked $i"
done
unset sourceFile
unset targetFile
unset i
source ~/.bash_profile
