
echo "Lets try guessing the files that you have in your directory"

function guess {
	echo "Guess the no of files in your current directory:"
	read filesnum
    totalfiles=$(ls -1 | wc -l)
}

guess

while [[ $filenum -ne $totalfiles ]]
do
	if [[ $filenum -lt $totalfiles ]] 
	then
		echo "Oops!It seems like you have guessed the number lesser than the files present"
	else
		echo "Oops!It seems like you guessed the number more than the files present"
	fi
	guess
done

echo "Finally u have guessed it write and The files are:"
echo ls -1
