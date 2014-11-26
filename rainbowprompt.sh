# Define your own colors here. Be sure to update line 14 with a new modulus
# if you add more colors
PROMPT_COLOR=5
color[0]="\[\e[0;31m\]"
color[1]="\[\e[0;33m\]"
color[2]="\[\e[0;32m\]"
color[3]="\[\e[0;36m\]"
color[4]="\[\e[0;34m\]"
color[5]="\[\e[0;35m\]"

PROMPT_RESET="\[\e[0m\]"
#PS1='\u@\h:\w\$ ' # Change this to your desired prompt w/o color codes
DPS1=$PS1

function rotate_color() {
	PROMPT_COLOR=$((($PROMPT_COLOR+1)%6));
}

function new_ps1() {
	PS1="${color[$PROMPT_COLOR]}$DPS1$PROMPT_RESET"
}

PROMPT_COMMAND='rotate_color;new_ps1'

