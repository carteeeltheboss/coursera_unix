all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "\nDate and Time of make: $$(date)" >> README.md
	echo "\nNumber of lines in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm README.md
