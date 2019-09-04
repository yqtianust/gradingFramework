#!/bin/sh
set -x
line=63
lineno=`expr $line - 1`
foldername=`sed -n ${lineno}p ../file.txt` 
srcfolder=`find ./${foldername} -name "src"`
javac ${srcfolder}/lab10/Main.java -d ${srcfolder}
java -cp ${srcfolder} lab10.Main

