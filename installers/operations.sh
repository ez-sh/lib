#!/bin/bash

if whiptail --title "Operations Installer | ez-sh" --yesno "Welcome To The Operaations installer" --yes-button "Continue" --no-button "Exit" 8 45; then

	dir=$(whiptail --inputbox "Choose A Directory? you can use slashes or leave blank for your current " 8 65 --title "Operations Installer | Ez-sh" 3>&1 1>&2 2>&3)
	
	if whiptail --title "Operations Installer | ez-sh" --yesno "Are you sure you want to install Operations?" 8 45; then

		cd "$dir"
		if git clone https://github.com/Tahj-s/Operations-Calculator; then
			whiptail --title "Operations Installer | ez-sh" --msgbox "Operations is now installed in the chosen directory" 8 45
		else
			whiptail --title "Operations Installer | ez-sh" --msgbox "Operations already installed on that directory or has failed to install from an error" 8 45
		fi
	else
		whiptail --title "Operations Installer | ez-sh" --msgbox "You have Exited this program" 8 45
	fi
else
	whiptail --title "Operations Installer | ez-sh" --msgbox "You have Exited this program" 8 45

fi
