#!/usr/bin/bash
#git setup
 
git_username=""
while ["$git_username" = ""]
do
    read -p "Plese enter your new git global username: " user_input_1
    read -p "Following git global username correct: $user_input_1? (y/n): " correct_username
    if [ "$correct_username" = "y" ]; then
        git_username="$user_input_1"
    fi
done

git config --global user.name "$git_username"


