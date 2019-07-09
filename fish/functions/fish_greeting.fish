#!/usr/bin/fish
# Set the greeting here

function fish_greeting
	echo Hello (whoami), it is currently (date '+%r'). Running (uname -or). | cowsay -f tux
end
