#!/bin/bash


vidDir=$(xdg-user-dir VIDEOS)
while [[ -d $vidDir ]]
do
    chosenDir=$( ls $vidDir | dmenu -l 4 )
    vidDir="$vidDir/$chosenDir"
    subDirCount=$(find $vidDir -maxdepth 1 -type d | wc -l)
    [[ $subDirCount -eq 1 ]] && break
done

[[ -z $( ls $vidDir | dmenu -l 5 ) ]] || mpv "$vidDir"

