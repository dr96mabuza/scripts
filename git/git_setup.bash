#!/usr/bin/bash
#git setup
 
git_username=""
while ["$git_username" = ""]
do
    echo Plese enter your new git username:
    read user_git_username
    $git_username = $user_git_username
done

echo $git_username


