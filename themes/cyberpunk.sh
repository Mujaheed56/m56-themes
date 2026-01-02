#!/data/data/com.termux/files/usr/bin/bash

# cyberpunk theme - neon glow vibes
# purple pink and blue like blade runner

# neon colors
export PURPLE='\033[0;35m'
export BRIGHT_PURPLE='\033[1;35m'
export PINK='\033[1;95m'
export CYAN='\033[1;36m'
export BLUE='\033[1;34m'
export NC='\033[0m'

# cyberpunk ls colors
export LS_COLORS='di=1;35:fi=1;95:ln=1;36:pi=1;34:so=1;35:bd=1;95:cd=1;36:or=1;31:ex=1;35'

# glowing prompt
export PS1="${PINK}╭─${NC}${PURPLE}[\u]${NC}${CYAN}@${NC}${BLUE}[\h]${NC} ${BRIGHT_PURPLE}\w${NC}\n${PINK}╰─${NC}${CYAN}⚡${NC} "

# cyberpunk banner
show_banner() {
    clear
    echo -e "${PINK}"
    echo "    ▄████▄▓██   ██▓ ▄▄▄▄   ▓█████  ██▀███  "
    echo "   ▒██▀ ▀█ ▒██  ██▒▓█████▄ ▓█   ▀ ▓██ ▒ ██▒"
    echo "   ▒▓█    ▄ ▒██ ██░▒██▒ ▄██▒███   ▓██ ░▄█ ▒"
    echo -e "${PURPLE}   ▒▓▓▄ ▄██▒░ ▐██▓░▒██░█▀  ▒▓█  ▄ ▒██▀▀█▄  "
    echo "   ▒ ▓███▀ ░░ ██▒▓░░▓█  ▀█▓░▒████▒░██▓ ▒██▒"
    echo -e "${BLUE}   ░ ░▒ ▒  ░ ██▒▒▒ ░▒▓███▀▒░░ ▒░ ░░ ▒▓ ░▒▓░"
    echo "     ░  ▒  ▓██ ░▒░ ▒░▒   ░  ░ ░  ░  ░▒ ░ ▒░"
    echo -e "${NC}"
    echo -e "${CYAN}    >> SYSTEM ONLINE <<${NC}"
    echo -e "${PINK}    welcome to the future${NC}"
    echo ""
}

# show banner
show_banner

# cyberpunk aliases
alias neofetch='neofetch --ascii_colors 5 13 6'
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias matrix='cmatrix -C magenta'

# git neon colors
git config --global color.ui auto
git config --global color.status.changed "magenta bold"
git config --global color.status.untracked "cyan bold"
git config --global color.branch.current "magenta bold"
git config --global color.diff.new "cyan bold"
