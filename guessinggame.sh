#!/bin/bash

# Fonction pour obtenir le nombre de fichiers dans le répertoire courant
function count_files {
    echo $(ls -1 | wc -l)
}

# Nombre correct de fichiers
correct_count=$(count_files)
user_guess=-1

echo "Bienvenue dans le jeu de devinette !"
echo "Combien de fichiers se trouvent dans le répertoire actuel ?"

# Boucle pour demander à l'utilisateur jusqu'à ce qu'il devine correctement
while [[ $user_guess -ne $correct_count ]]; do
    read -p "Votre estimation : " user_guess
    if [[ $user_guess -lt $correct_count ]]; then
        echo "C'est trop bas ! Essayez encore."
    elif [[ $user_guess -gt $correct_count ]]; then
        echo "C'est trop haut ! Essayez encore."
    fi
done

echo "Félicitations ! Vous avez trouvé le bon nombre de fichiers : $correct_count"

