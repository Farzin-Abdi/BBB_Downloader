#!/bin/sh
clear
echo -e "Download BBB meetings:\n\n"
echo
echo
echo -e "Select BBB Option:"
echo
echo -e " 1  >>  Download new video"
echo -e " 2  >>  Start offline mode"
echo
read -p "Select: " userinss
if [[ $userinss == '1' ]];then
	echo
	echo
	read -p "Give me the URL: " gurl
	read -p "Choose a name for the file: " gname
	echo
	python3 $PWD/src/bbb_player.py -d $gurl -n $gname
elif [[ $userinss == '2' ]];then
	python3 $PWD/src/bbb_player.py -s
else
	exit
fi
