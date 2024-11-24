# Fichier makefile

all: README.md

README.md: guessinggame.sh
	echo "# Projet Guessing Game" > README.md
	echo "\nCe projet a été généré le : $$(date)" >> README.md
	echo "\nNombre de lignes dans guessinggame.sh : $$(wc -l < guessinggame.sh)" >> README.md

