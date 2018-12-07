README.md:
	touch README.md
	echo "# Guessing Game Project" >> README.md

	echo "* Make was run at:" >> README.md
	date "+DATE: %Y-%m-%d%nTIME: %H:%M:%S" >> README.md 

	echo "* Number of lines in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
