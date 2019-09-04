#!/bin/bash
echo "compile and test"
for f in lab_5/*/;
do
	echo ${f}
	srcfolder=`find ${f} -name Map.java -exec dirname {} \;`
	find ${f} -name Map.java -exec javac -cp ${srcfolder} {} -d ${f} \;
	srcfolder=`find ${f} -name BadMapException.java -exec dirname {} \;`
	find ${f} -name BadMapException.java -exec javac -cp ${srcfolder} {} -d ${f} \;
	# find ${f} -name BusCompany.java -exec javac -cp ${srcfolder} {} -d ${f} \;

	java -jar ./lib/junit-platform-console-standalone-1.3.1.jar -cp lib:./${f} --scan-classpath lib >${f}/result.txt 2>&1
done

	# find ${f} -name Bus.java 
	# find ${f} -name BusCompany.java