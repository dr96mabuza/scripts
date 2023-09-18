#!/usr/bin/bash
#git setup
 
git_username=""
while true; do
    read -p "Plese enter your new git global username: " user_input_1
    read -p "Following git global username correct: $user_input_1? (y/n): " correct_username
    if [ "$correct_username" = "y" ]; then
        git_username="$user_input_1"
        break
    fi
done

#change git global username
git config --global user.name "$git_username"

git_email=""
while true; do
    read -p "Plese enter your new git global email: " user_input_2
    read -p "Following git global email correct: $user_input_1? (y/n): " correct_email
    if [ "$correct_email" = "y" ]; then
        git_email="$user_input_2"
        break
    fi
done

#change git global email
git config --global user.email "$git_email"
