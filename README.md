README.md: guessinggame.sh
    echo "# Guessing Game Project" > README.md
    echo "Generated on $$date" >> README.md
    echo "Number of lines in guessinggame.sh: $$lines" >> README.md

date := $(shell date)
lines := $(shell wc -l < guessinggame.sh)

.PHONY: all
all: README.md