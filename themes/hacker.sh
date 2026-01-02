#!/data/data/com.termux/files/usr/bin/bash

# hacker theme - matrix style
# green on black like a real hacker

# colors
export GREEN='\033[0;32m'
export BRIGHT_GREEN='\033[1;32m'
export DIM_GREEN='\033[2;32m'
export NC='\033[0m'

# set terminal colors
export CLICOLOR=1
export LS_COLORS='di=1;32:fi=0;32:ln=1;36:pi=0;33:so=1;35:bd=1;33:cd=1;33:or=1;31:ex=1;32'

# custom prompt - simple and clean
export PS1="${BRIGHT_GREEN}┌[${NC}${GREEN}\u@\h${BRIGHT_GREEN}]─[${NC}${DIM_GREEN}\w${BRIGHT_GREEN}]\n└─>${NC} "

# banner function
show_banner() {
    clear
    echo -e "${BRIGHT_GREEN}"
    echo "    ██╗  ██╗ █████╗  ██████╗██╗  ██╗███████╗██████╗ "
    echo "    ██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗"
    echo "    ███████║███████║██║     █████╔╝ █████╗  ██████╔╝"
    echo "    ██╔══██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗"
    echo "    ██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║"
    echo "    ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝"
    echo -e "${NC}"
    echo -e "${GREEN}    > access granted${NC}"
    echo -e "${DIM_GREEN}    > initializing hacker mode...${NC}"
    echo ""
}

# show banner on terminal start
show_banner

# aliases for hacker vibe
alias matrix='cmatrix -abs'
alias hack='echo "hacking in progress..." && sleep 2 && echo "access granted!"'
alias scan='nmap'

# custom ls colors
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias la='ls -A --color=auto'

# git colors
git config --global color.ui auto
git config --global color.status.changed "green bold"
git config --global color.status.untracked "green bold"
git config --global color.branch.current "green bold"
