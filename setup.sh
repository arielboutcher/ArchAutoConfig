#!/bin/bash
#setting up needed stuff if not installed


#starting with git

if ! location="$(type -p "git")" || [ -z "git" ]; then

	echo "#################################################"
	echo "installing git for this script to work"
	echo "#################################################"

  	sudo apt install git -y
	# check if apt-git is installed
	if which apt-get > /dev/null; then

		sudo apt-get install -y git

	fi

	# check if pacman is installed
	if which pacman > /dev/null; then

		sudo pacman -S --noconfirm git

	fi

	# check if eopkg is installed
	if which eopkg > /dev/null; then

		sudo eopkg -y install git

	fi

fi