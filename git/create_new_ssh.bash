#!/usr/bin/bash

read -p "Would you like to change keyname(y)? or use default(n): " user_input
if [ "$user_input" = "y" ]; then
    read -p "Enter new key name: " new_key_name
    read -p "Enter your email address: " email_addr
    ssh-keygen -t ed25519 -C "$email_addr" -f "~/.ssh/$new_key_name.pub"
    echo "copy text below and paste on github/gitlab: "
    cat "~/.ssh/$new_key_name.pub"
else
    read -p "Enter your email address: " email_addr
    ssh-keygen -t ed25519 -C $email_addr
    echo "copy text below and paste on github/gitlab: "
    cat ~/.ssh/id_ed25519.pub
fi

read -p "To test your new key, please enter service domain name. eg "github.com": domain
ssh -T "git@$domain"

