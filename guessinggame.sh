function countfiles()
{
	# clear old files if program was already run
	rm -f *.rand

	local ran=$(($RANDOM%10))

	local count=0
	while [ $count -lt $ran ]
	do
		touch "$count.rand"
		let "count=count + 1"
	done

	echo "$ran"
}

numfiles=$(countfiles)
guesscount=1

while [ 1 -lt 2 ]
do
	echo "please guess a number:"
	read guessedvalue

	if [ $guessedvalue -eq $numfiles ]
	then
		echo "you were right! good job!"
		echo "it only took $guesscount attemps!"
		echo "remember to hydrate!"
		break

	elif [ $guessedvalue -lt $numfiles ]
	then
		echo "too low!"

	else
		echo "too high!"
	fi
	let "guesscount=guesscount+1"
done
