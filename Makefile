README.md:
	touch README.md
	echo "Title:\n\tThe Bash Guessing Game\n" >> $@
	echo "Make was run on: \n\t`date`\n" >> $@
	echo "The program contains\n\t `cat guessinggame.sh | wc -l` lines of code\n" >> $@
