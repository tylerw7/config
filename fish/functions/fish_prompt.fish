#!/usr/bin/fish
# Prompt setting

function fish_prompt
	set_color yellow
	printf (whoami)'@'(hostname)
	set_color white
	printf ':'
	set_color cyan
	printf (pwd)
	set_color green
	printf ' ~'
	set_color white
	printf '> '
end

