#!/bin/bash
echo "unzip all"
for f in lab_6/*/;
do
	if [ -e ${f}*.zip ]
	then
		# echo ${f}*.zip
		unzip -q ${f}*.zip	-d ${f}
	elif [ -e ${f}*.rar ]
	then 
		# echo ${f}*.java
		unrar x ${f}*.rar ${f} -inul
	elif [ -e ${f}*.7z ]
	then 
		# echo ${f}*.java
		7z x ${f}*.7z -o${f}
	elif [ -e ${f}*.java ]
	then 
		# echo ${f}*.java
		echo FIND .java file
		ls ${f}
	else
		echo NO java or zip found in ${f} | tee -a error.txt
		ls ${f} | tee -a error.txt
		echo ""
	fi
	
done
