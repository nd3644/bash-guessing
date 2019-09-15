readme.md:
	touch readme.md
	echo "Title:\n\tThe Bash Guessing Game\n" >> $@
	echo "Make was run on: \n\t`date`\n" >> $@
	echo "The program contains\n\t `cat guessing.sh | wc -l` lines of code\n" >> $@
