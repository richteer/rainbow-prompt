# Changes your prompt based on current directory.
# Probably will pick bad colors, and depends on xterm256 colors
# Will certainly not work with rainbowprompt.sh

PROMPT_RESET="\[\e[0m\]"
DPS1=$PS1

function change_color() {
	CODE=$(stat $PWD --printf %i)
	PROMPT_COLOR="\[\e[38;5;$(($CODE%256))m\]";
}

function new_ps1() {
	PS1="${PROMPT_COLOR}$DPS1$PROMPT_RESET"
}

PROMPT_COMMAND='change_color;new_ps1'

