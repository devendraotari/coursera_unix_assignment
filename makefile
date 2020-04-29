all: README.md
README.md: guessinggame.sh
	touch README.md
	echo "# The Guessing Game " > README.md
	echo "## This file is created on "  >> README.md | date >> README.md
	
	echo "## Lines of Code in guessinggame.sh" >> README.md |wc -l guessinggame.sh | egrep -o '[0-9]+' >> README.md 
clean:
	rm README.md