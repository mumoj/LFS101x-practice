# !bin/bash
ls miogi.sg
echo $?

read -p "Enter Directory Name: " miona
mkdir $miona
cd $miona
pwd $miona

touch $0 $1 $2 $3

FILES=$(ls .)

for File in $FILES
	do
		echo "Initial $File Status: $(ls File)"
done

for File in $FILES
	do 
		echo "This is $File" > $File
		echo "Displaying in Cat ..."
		cat $File
done

echo "Now saying Goodbye ..."
cd ../






echo "Exit status: $?"


