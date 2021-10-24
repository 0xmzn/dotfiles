#!/bin/bash 

echo -e "$(mocp -Q '%song - %artist')"

if [[ "${BLOCK_BUTTON}" -eq 2 ]];then
	mocp -G

elif [[ "${BLOCK_BUTTON}" -eq 1 ]];then 
	mocp -r

elif [[ "${BLOCK_BUTTON}" -eq 3 ]];then
	mocp -f
fi
