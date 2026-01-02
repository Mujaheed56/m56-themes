#!/data/data/com.termux/files/usr/bin/bash

# rainbow theme - full color party
# all the colors all the time

# all the colors baby
export RED='\033[1;31m'
export GREEN='\033[1;32m'
export YELLOW='\033[1;33m'
export BLUE='\033[1;34m'
export PURPLE='\033[1;35m'
export CYAN='\033[1;36m'
export WHITE='\033[1;37m'
export NC='\033[0m'

# rainbow ls
export LS_COLORS='di=1;34:fi=1;32:ln=1;36:pi=1;33:so=1;35:bd=1;31:cd=1;36:or=1;31:ex=1;32'

# colorful prompt
export PS1="${RED}[${GREEN}\u${YELLOW}@${BLUE}\h${PURPLE}]${CYAN} \w ${WHITE}\$${NC} "

# rainbow banner
show_banner() {
    clear
    echo -e "${RED}    ██████╗  █████╗ ██╗███╗   ██╗██████╗  ██████╗ ██╗    ██╗${NC}"
    echo -e "${YELLOW}    ██╔══██╗██╔══██╗██║████╗  ██║██╔══██╗██╔═══██╗██║    ██║${NC}"
    echo -e "${GREEN}    ██████╔╝███████║██║██╔██╗ ██║██████╔╝██║   ██║██║ █╗ ██║${NC}"
    echo -e "${CYAN}    ██╔══██╗██╔══██║██║██║╚██╗██║██╔══██╗██║   ██║██║███╗██║${NC}"
    echo -e "${BLUE}    ██║  ██║██║  ██║██║██║ ╚████║██████╔╝╚██████╔╝╚███╔███╔╝${NC}"
    echo -e "${PURPLE}    ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝  ╚══╝╚══╝ ${NC}"
    echo ""
    echo -e "${RED}l${YELLOW}i${GREEN}f${CYAN}e${BLUE} ${PURPLE}i${RED}n${YELLOW} ${GREEN}c${CYAN}o${BLUE}l${PURPLE}o${RED}r${NC} 🌈"
    echo ""
}

# show the rainbow
show_banner

# fun aliases
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias rainbow='echo -e "${RED}R${YELLOW}A${GREEN}I${CYAN}N${BLUE}B${PURPLE}O${RED}W${NC}"'

# try to use lolcat if available
if command -v lolcat &> /dev/null; then
    alias cat='lolcat'
    alias neofetch='neofetch | lolcat'
fi

# git with all colors
git config --global color.ui always
git config --global color.status.added "green bold"
git config --global color.status.changed "yellow bold"
git config --global color.status.untracked "cyan bold"
